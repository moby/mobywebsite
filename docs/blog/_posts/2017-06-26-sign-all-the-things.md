---
title: Sign all the things!
layout: post
author: Riyaz Faizullabhoy
author-url: https://twitter.com/riyazdf
excerpt_separator: <!--more-->
---

###  Notary + LinuxKit deep dive

Just a few months ago, we open sourced [LinuxKit](https://github.com/linuxkit/linuxkit), a toolkit to build secure, lean, and portable Linux subsystems. One of the key features of LinuxKit lies in its componentization: each of its individual components, including its kernel and system services, are completely swappable.

As you can imagine, it is important to _trust_ each and every one of these components so you can be sure your LinuxKit subsystem is assembled securely. In particular, you should be able to understand _where_ the components come from, _what_ they are supposed to include, and _when_ you should stop using them in case they become out of date. This is a hard requirement for every package – after all, a system is only as secure as its most vulnerable component.

With this goal in mind, the LinuxKit team has been using [Notary](https://github.com/docker/notary), a signing and verification framework that is also part of the Moby Project, to make this easy. Today, every LinuxKit package is signed with Notary. We’d like to tell you more about what this means for your LinuxKit subsystems today, and what you can expect in the future.


## Why Notary?

Cryptographic signing is an absolute necessity for establishing trust over content sent over an untrusted media such as the internet. While there are many cryptographic signing systems available for use, most only provide integrity and authenticity guarantees - that the package contents were not modified, and that it was signed off by a key you trust.

Notary not only provides integrity and authenticity, but goes above and beyond by providing _survivable key compromise_ and _freshness_ properties.

By providing survivable key compromise, Notary ensures that any key can be seamlessly rotated out without breaking any trust or functionality in the system. This is particularly important if part of your signing process occurs in online, more exposed environments, where keys are more likely to be exfiltrated. Additionally, it’s difficult in many other signing frameworks to rotate the keys without discarding the root of trust or manually configuring subkeys.

Freshness ensures that you cannot download an old package, or get frozen in time on a stale package. This is a common issue in many signing systems: because it is difficult to invalidate or expire signatures, old and potentially vulnerable packages often carry still-valid signatures (ex: openssl with Heartbleed).

Notary achieves these guarantees by signing separate metadata to capture context about its packages. It’s worth mentioning that Notary and the signed metadata it produces is an implementation of [The Update Framework](https://theupdateframework.github.io/), which is a research project based from [NYU](https://www.nyu.edu/) that has been published and discussed in several peer-reviewed academic publications.


## Notary + LinuxKit: better together

### Perfect for our packaging

LinuxKit uses Docker images as the distribution format for all of its packages, including its kernel and init process, and the Docker Hub to store them. While Notary can sign over any type of content, Docker includes a robust and easy-to-use integration known as [Docker Content Trust](https://blog.docker.com/2015/08/content-trust-docker-1-8/). By simply exporting `DOCKER_CONTENT_TRUST=1`, Docker will verify all signatures on pull, and sign images on push.

![Docker push with Content Trust](/images/trust_push.png)

We also implemented a trust validation step in the `moby` build tool by leveraging the Notary library. Any packages that are specified by image or organization name in the LinuxKit yaml file will be verified using the Notary library. Today, all LinuxKit packages in the `linuxkit` organization in Docker Hub are signed:

![trust on moby build](/images/trust_yml.png)

### Collaboration made easy

Each LinuxKit maintainer has their own key for signing purposes. These keys map to less-privileged roles in Notary known as delegations - not only does this prevent the need for sharing any private key material, but it also works seamlessly with Docker Content Trust, such that `DOCKER_CONTENT_TRUST=1 docker push linuxkit/kernel:4.9.x` pushes and signs with the appropriate keys. That said, the LinuxKit team went an extra step further to ensure that every Makefile for LinuxKit packages includes Docker Content Trust on every pull and push, so running `make` also works for convenience.

![delegation roles for LinuxKit maintainers](/images/trust_roles.png)

As we can see above, each maintainer has their own key and role, and there are a couple of extra roles for release management and CI. We can easily determine which role and key signed off on a package because that context is captured in Notary’s metadata, for example [Rolf](https://github.com/rn) has signed off on several of the 4.10 series kernel packages:

![Notary signatures on linuxkit/kernel images](/images/trust_targets.png)

Using Notary delegations, we can not only audit who signed the packages, but enforce policy about the signatures on a package. For example: a package could require a simple threshold of two signatures, or even signoff from two maintainers and CI to be considered valid.

## A trusted package manager

Today, Notary and Docker Content Trust are deeply integrated into all LinuxKit packages, not only providing strong cryptographic and usability features, but ultimately equipping LinuxKit with a trusted package manager.

A great example of this integration is how the `moby` tool leverages Notary during offline builds for a LinuxKit image. If the `moby` tool detects it is offline when trying to update to the latest signed data for an individual package, it will fall back to already trusted data from a previous validation if the data is still unexpired. It will perform the same signature verification step using the key data it had previously trusted, and output a warning to the prompt to inform the user that there may be a more up to date version remotely for when they can get back online:

![handling offline signature verification](/images/trust_caching.png)

Overall, the LinuxKit team is excited to leverage Notary’s state-of-the-art signing and verification features, and we view it as a fundamental step to establish trust in our packages - to us, if a LinuxKit package isn’t signed by Notary, it should be as if _it doesn’t exist_.

Going forward, there are many features of Notary yet to explore: fine-grained auditing, signature threshold policy enforcement, and even key pinning to our roots of trust. We look forward to more advanced integrations between Notary and LinuxKit.

---
title: Moby projects and Kubernetes
layout: kubernetes
---

## How Moby and Kubernetes work together

There have always been close relations between the Moby open source projects, led by Docker, and Kubernetes, since Kubernetes was launched at DockerCon 2014. The Kubernetes and the Moby communities often include the same people, attend the same meetups, use the same languages and design patterns, and try to solve the same problems. The containerd project was started last year in collaboration with all of the major cloud providers and has worked with the Kubernetes community to provide an open and reliable container runtime for higher level orchestration projects and container platforms, including Kubernetes.

This page summarizes how each Moby Project integrates Kubernetes and how to get involved.

![Moby <3 Kubernetes](/images/dockercon-2017-eu.002.jpeg)

### containerd and cri-containerd

Code: [https://github.com/containerd/containerd](https://github.com/containerd/containerd)

The containerd project was designed to be used as the core container runtime for future editions of Docker, Kubernetes, and many other projects.

Code: [https://github.com/kubernetes-incubator/cri-containerd](https://github.com/kubernetes-incubator/cri-containerd)

To use containerd with Kubernetes, you need to use the cri-containerd CRI (common runtime interface) adaptor. This is currently largely feature complete, and works with Kubernetes 1.7 or later, and is in the final stabilisation process. There are outstanding issues that need help and you can find out more on the [cri-containerd issue tracker](https://github.com/kubernetes-incubator/cri-containerd/issues).  Any bugs you find should be reported there too. Below are slides from the recent [Moby Summit in Los Angeles](https://blog.mobyproject.org/moby-summit-los-angeles-recap-a41e6acf81f8), which cover the Kubernetes containerd integration by [Liu Lantao](https://medium.com/@liulantao).

<iframe src="//www.slideshare.net/slideshow/embed_code/key/K41Ft9AiQEYtCA" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>


There are several ways you can set up a Kubernetes cluster with containerd and cri-containerd:

- To try it out there is a quick start with Ansible (see the [README](https://github.com/kubernetes-incubator/cri-containerd/blob/master/contrib/ansible/README.md))

- You can try it with Kelsey Hightower's [Kubernetes the Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way) to create a cluster from scratch on Google Cloud.

- Install from the release tarball using kubeadm (see the [instructions](https://github.com/kubernetes-incubator/cri-containerd/blob/master/docs/installation.md))

- Install with LinuxKit on a local VM (see the [instructions](https://github.com/linuxkit/linuxkit/tree/master/projects/kubernetes)).

You can join the discussions on the `#containerd` channel on the [Community Slack](http://dockr.ly/community).

### LinuxKit

Code: [https://github.com/linuxkit/linuxkit](https://github.com/linuxkit/linuxkit)

LinuxKit is a tool for building custom secure, portable and lean operating systems for containers. It was launched at DockerCon 2017 with a demo of Kubernetes, and has continued to improve this support since then. There is a detailed set of [getting started instructions](https://github.com/linuxkit/linuxkit/tree/master/projects/kubernetes) for both Kubernetes with Docker and with containerd. This can be customised further as required.

You can see the see the LinuxKit Kubernetes demo from DockerCon in the video below
<iframe width="560" height="315" src="https://www.youtube.com/embed/hwkqju_BXEo?rel=0&amp;start=6420" frameborder="0" allowfullscreen></iframe>

You can join the discussions on the `#linuxkit` channel on the [Community Slack](http://dockr.ly/community).


### InfraKit

Code: [https://github.com/docker/infrakit](https://github.com/docker/infrakit)

InfraKit is a toolkit for creating and managing declarative, self-healing infrastructure. It has a Plugin included for creating and managing Kubernetes clusters.  More information is in the repository's [README](https://github.com/docker/infrakit/blob/master/pkg/plugin/flavor/kubernetes/README.md) and below is a video of InfraKit bootstrapping and scaling a Kubernetes cluster: 
<iframe width="560" height="315" src="https://www.youtube.com/embed/HdL4Wwrwcm8?rel=0" frameborder="0" allowfullscreen></iframe>

You can join the discussions on the `#infrakit` channel on the [Community Slack](http://dockr.ly/community).

### libnetwork

Code: [https://github.com/docker/libnetwork](https://github.com/docker/libnetwork)

Support has been [submitted to libnetwork](https://github.com/docker/libnetwork/pull/1978) to make it a CNI provider, the base API for Kubernetes network drivers. This enables all the existing Docker network drivers to work with Kubernetes

Kubernetes has merged alpha support for IPVS based L4 load-balancing using the IPVS library support in libnetwork developed originally for Docker Swarm, which was extended for the Kubernetes use cases. For more information, see the pull request at [kubernetes/kubernetes#46580](https://github.com/kubernetes/kubernetes/pull/46580).


### Notary

Code: [https://github.com/docker/notary](https://github.com/docker/notary)

Notary aims to make the internet more secure by making it easy for people to publish and verify content. It is used for signing and verification of containers by Docker and other container projects. Both Notary and [The Update Framework](https://theupdateframework.github.io/) that it is based on are in the process of being [donated to the CNCF](https://github.com/cncf/toc/pull/38) and there will be further direct integration with other CNCF projects, such as Kubernetes, soon.

You can join the discussions on the `#notary` channel on the [Community Slack](http://dockr.ly/community).

### libentitlement

Code: [https://github.com/docker/libentitlement](https://github.com/docker/libentitlement)

This is a work-in-progress library to support a common high level security entitlement interface for Docker and Kubernetes, a similar type of interface to Apple's entitlements for macOS. It is being developed in conjunction with the Kubernetes community.

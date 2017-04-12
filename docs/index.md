---
title: Moby
layout: home
---

## News

* [The Moby Project is announced at DockerCon 2017](https://blog.docker.com/)

## About Moby

Moby is an open project created by Docker to advance the software containerization movement. It provides a “lego set” of dozens of standard components and a framework for assembling them into custom platforms. Think of Moby as the Lego of container platforms.

**image**

All Moby components are containers, so creating new components is as easy as building a new OCI-compatible container.

How Docker uses Moby:
* Manage ports of the Docker platform to different infrastructures: Docker for Mac, Docker for Windows, Docker for AWS, etc.
* Manage different release channels: nightly, edge, stable, etc.
* Manage our commercial and community editions of the platform
* Collaborate with partners and customers on platform customizations
* Experiment with new features and components
* Manage contributions to upstream open-source projects

How the community can use Moby:
* Docker power users who want to customize their build of Docker (ex: test Docker for Mac with a bleeding edge feature branch of containerd)
* Open-source container contributors who want a complete environment to develop and test their project (ex: containerd maintainers reproducing bugs on kubernetes + old kernel)
* Hardware and infrastructure vendors who want to port and optimize container platforms to their products (ex: nvidia patching every major container platform to support their GPU optimizations)
* Platform vendors who want to build on well-tested common components while differentiating on features (ex: Pivotal Cloud Foundry, Red Hat Openshift, Amazon ECS…)
* Technology companies building specialized platforms for specific use cases, without reinventing the wheel (ex: IoT, machine learning)

Moby features a rich standard library of components for all the vital aspects of a container platform: operating system, container runtime, orchestration, infrastructure management, networking, storage, security, build, image distribution, etc. This library also includes all Docker official images, which will be managed under the Moby project: https://github.com/docker-library/official-images will be moved to https://github.com/mobyproject/library

## Principles

Moby is an open project guided by strong principles, but modular, flexible and without too strong an opinion on user experience, so it is open to the community to help set its direction. The guiding principles are:
* Batteries included but swappable: Moby includes enough components to build fully featured container platforms, but it’s modular architecture ensures that most of the components can be swapped by different implementations.
* Usable security: Moby will provide secure defaults without compromising usability.
* Container centric: Moby is built with containers, for running containers.

With Moby, you can describe all the components of your distributed application, from the high level configuration files down to the kernel you would like to use and build and deploy it easily.

Moby uses [containerd](https://github.com/containerd/containerd) as the default container runtime.

Moby can build a various range of environments, from a simple [static website](examples/nginx.yml) to [complex web application](examples/votingapp.yml) to [opinionated container platforms](examples/docker-ce.yml)

## FAQ

1. What is the relationship between Moby and Docker?

2. What is the relationship between Moby, containerd, OCI and runc?

3. What is the relationship between Moby and container orchestration systems like Kubernetes and Mesos?

4. What is the relationship between Moby and cloud managed container services?


---
title: Moby
layout: home
---

## News

* [The Moby Project is announced at DockerCon 2017](https://blog.docker.com/2017/04/introducing-the-moby-project/)

## About Moby
Moby is an open framework created by Docker to assemble specialized container systems without reinventing the wheel. It provides a “lego set” of dozens of standard components and a framework for assembling them into custom platforms.

![Moby collaboration](/images/moby-collaboration.png "Moby collaboration")

## Overview

At the core of Moby is a framework to assemble specialized container systems. It provides:

- A library of containerized components for all vital aspects of a container system: OS, container runtime, orchestration, infrastructure management, networking, storage, security, build, image distribution, etc.
- Tools to assemble the components into runnable artifacts for a variety of platforms and architectures: bare metal (both x86 and Arm); executables for Linux, Mac and Windows; VM images for popular cloud and virtualization providers.
- A set of reference assemblies which can be used as-is, modified, or used as inspiration to create your own.

All Moby components are containers, so creating new components is as easy as building a new OCI-compatible container.

[More information on the Github repo](https://github.com/moby/moby/blob/moby/README.md)

## Principles

Moby is an open project guided by strong principles, but modular, flexible and without too strong an opinion on user experience, so it is open to the community to help set its direction.

The guiding principles are:

- Batteries included but swappable: Moby includes enough components to build fully featured container system, but its modular architecture ensures that most of the components can be swapped by different implementations.
- Usable security: Moby will provide secure defaults without compromising usability.
- Container centric: Moby is built with containers, for running containers.

With Moby, you should be able to describe all the components of your distributed application, from the high-level configuration files down to the kernel you would like to use and build and deploy it easily.

Moby uses [containerd](https://github.com/containerd/containerd) as the default container runtime.

## Audience

Moby is recommended for anyone who wants to assemble a container-based system, this includes:

- Hackers who want to customize or patch their Docker build
- System engineers or integrators building a container system
- Infrastructure providers looking to adapt existing container systems to their environment
- Container enthusiasts who want to experiment with the latest container tech
- Open-source developers looking to test their project in a variety of different systems
- Anyone curious about Docker internals and how it’s built

Moby is NOT recommended for:

- Application developers looking for an easy way to run their applications in containers. We recommend Docker CE instead.
- Enterprise IT and development teams looking for a ready-to-use, commercially supported container platform. We recommend Docker EE instead.
- Anyone curious about containers and looking for an easy way to learn. We recommend the docker.com website instead.

## Getting started

You can get started with Moby by running some of the examples assemblies in the [LinuxKit GitHub repository](https://github.com/linuxkit/linuxkit/tree/master/examples).

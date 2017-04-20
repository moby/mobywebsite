---
title: Moby and Docker
layout: default
---

## Moby and Docker

This document was written collectively by the community of Moby maintainers at the Moby Summit April 20, 2017 to clarify the relationship between Moby and Docker.

Docker is, and will remain, a open source product that lets you build, ship and run containers. It is staying exactly the same from a user's perspective. Users can download Docker from the [docker.com](https://www.docker.com/) website.

Work has been ongoing to break Docker into modular components for some time, with runc and containerd as examples. Containerd for example has been donated to the CNCF. We are now completing this work with the goal being that the monolithic docker repo eventually ceases to exist, instead being assembled from a set of components.

Moby is a project which provides a "Lego set" of dozens of components, the framework for assembling them into custom container-based systems, and a place for all container enthusiasts to experiment and exchange ideas.

Docker the product will be assembled from components that are packaged by the Moby project.

The Moby project provides a command-line tool called moby which assembles components. Currently it assembles bootable OS images, but soon it will also be used by Docker for assembling Docker out of components, many of which will be independent projects.

As the Docker Engine continues to be split up into more components the Moby project will also be the home for those components until a more appropriate location is found.

---
title: Moby Summit June 2017 Recap
layout: post
author: Patrick Chanezon
author-url: https://twitter.com/chanezon
excerpt_separator: <!--more-->
---

###  Moby Summit at Docker headquarter

![Moby Summit Intro](/images/moby-summit.jpg "Moby Summit Intro")

On June 19 2017, 90 members of the Moby community gathered at Docker headquarter in San Francisco for the second Moby Summit.  This was an opportunity for the community to discuss the progress and future of the Moby project, two months after it was announced. 
 
We started the day with an introduction by Solomon Hykes, and a look at the website redesign: the [Moby project website](http://mobyproject.org/) now has a [blog](http://mobyproject.org/blog/), an event calendar, a list of projects, and a [community page](http://mobyproject.org/community/) with links to various community resources. The [website code is open source](https://github.com/moby/mobywebsite), issues and PRs to write guest blog posts or enhance it are welcome.
 
Then each team gave an update on their progress: Linuxkit, containerd, InfraKit, SwarmKit and LibNetwork, as well as the three new [Moby Special Interest Groups](http://mobyproject.org/projects/), Linuxkit Security, Security Scanning & Notary and Orchestration Security. All these talks have been recorded and you can find the videos and slides below.
 
In the afternoon, we split into 5 Birds Of Feathers (BOF) sessions: runc/containerd, LinuxKit, InfraKit, Security, and Security Scanning. You can find links to the BOF Notes at the end of this post.
 
We ended the day with a recap of the BOF sessions, and some beer. 

### Moby Summit Introduction 

<iframe width="560" height="315" src="https://www.youtube.com/embed/Bkm9RFeQ-qI" frameborder="0" allowfullscreen></iframe>
 
Slides: [Moby Summit Introduction](https://www.slideshare.net/chanezon/moby-introduction-june-2017)

### LinuxKit Update
 
<iframe width="560" height="315" src="https://www.youtube.com/embed/ByfegHVbJk0" frameborder="0" allowfullscreen></iframe>
 
Slides: [LinuxKit update](https://www.slideshare.net/Docker/linuxkit-update-at-the-moby-summit)

### containerd Update

<iframe width="560" height="315" src="https://www.youtube.com/embed/sSyb7776YXY" frameborder="0" allowfullscreen></iframe>

### InfraKit Update

<iframe width="560" height="315" src="https://www.youtube.com/embed/a83zyeWPkYw" frameborder="0" allowfullscreen></iframe>
 
Slides: [Infrakit update](http://www.slideshare.net/Docker/infrakit-update-at-moby-summit-june-2017)

### SwarmKit update
 
<iframe width="560" height="315" src="https://www.youtube.com/embed/LXvn2MNX1I8" frameborder="0" allowfullscreen></iframe>
 
[Swarm Proxy](https://github.com/dperny/swarm-proxy) is a program for managing Docker Swarm services behind a reverse proxy. It uses the Docker events stream to monitor for services being created and removed, and then uses Swarm Configs to update a reverse proxy service to correctly route traffic to those services. It is stateless. 

### Libnetwork update 
 
<iframe width="560" height="315" src="https://www.youtube.com/embed/rcdbGnty1n0" frameborder="0" allowfullscreen></iframe>
 
Slides: [Libnetwork update](http://www.slideshare.net/Docker/libnetwork-update-at-moby-summit-june-2017)
 
### Security Update

Finally, the Docker security team gave the update on the following topics:
* LinuxKit security update
* Security scanning and Notary update
* Orchestration security update
 
<iframe width="560" height="315" src="https://www.youtube.com/embed/EvGOfTJ_nEo" frameborder="0" allowfullscreen></iframe>
 
Slides: [LinuxKit Security and container container scanning with Notary](https://www.slideshare.net/Docker/llinuxkit-security-security-scanning-and-notary)

Slides: [Orchestration security](https://www.slideshare.net/diogomonica/moby-sig-orchestration-security-summit-presentation)

### BOF Summary Notes
* [runC / containerd](https://github.com/containerd/containerd/blob/master/reports/2017-06-23.md)
* [LinuxKit](https://github.com/linuxkit/linuxkit/blob/master/reports/2017-06-19-summit.md)
* [Security Scanning & Notary](https://forums.mobyproject.org/t/2017-06-19-meeing-notes/79)
* [Orchestration Security](https://forums.mobyproject.org/t/2017-06-19-orchestration-security-sig-meeting/90)

[Tweet "Check out the videos & slides from the last @moby Summit #containerd #linuxkit #infrakit "](https://twitter.com/share?text=+Check+out+videos+and+slides+from+the+last+Moby+Summit+%23containerd+%23linuxkit+%23infrakit+&via=moby&related=moby&url=https://mobyproject.org/blog/2017/06/26/moby-summit-recap/)



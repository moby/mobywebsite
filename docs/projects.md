---
title: Moby projects and SIGs
layout: projects
---

<div class="lead">
Moby is an open-source project, created by Docker, to enable and accelerate software containerization.
</div>

![Moby projects](/images/dockercon-2017-eu.000.jpeg)

The projects themselves provide a "Lego set" of toolkit components, the framework for assembling them into custom container-based systems, and a place for all container enthusiasts and professionals to experiment and exchange ideas.

Moby Project also hosts Special Interest Groups (SIG) for discussing subtopics among interested contributors. SIGs typically meet every week and post their meeting minutes and video of the meetings online.  If you're interested in starting a SIG, please begin a discussion on the [forum](https://forums.mobyproject.org).
<br />

### List of Moby Special Interest Groups

| Name | Leads | Agenda | Forum | Meetings |
|------|-------|--------|-------|----------|
| [LinuxKit Security](https://github.com/linuxkit/linuxkit/tree/master/sigs/security) | [@riyazdf](https://github.com/riyazdf) Riyaz Faizullabhoy | [Agenda and Meeting Notes](https://github.com/linuxkit/linuxkit/tree/master/reports/sig-security) | [Forum](https://forums.mobyproject.org/c/sig/linuxkit-security) | [Every other Wednesday at 9:00 AM PST](https://docker.zoom.us/j/779801882) |
| [Orchestration Security](https://github.com/docker/swarmkit/tree/master/sigs/orchestration-security) | [@diogomonica](https://github.com/diogomonica) Diogo Monica | [Agenda and Meeting Notes](https://docs.google.com/document/d/1co6Jv9Mq8jeToK-sYNNXwUQiPWcDCvlNJ5bozAOfriE/edit) | [Forum](https://forums.mobyproject.org/c/sig/orchestration-security) | [Every other Tuesday at 3:00 PM PST](https://docker.zoom.us/j/417366441) |

### List of Moby Projects

<div class="row">
<div class="col align-self-center">
{% for project in site.data.projects %}
{% capture url_to_fetch %}
https://api.github.com/repos/{{ project }}
{% endcapture %}
{% fetch_and_render url_to_fetch github-repo-card.html %}
{% endfor %}
</div>
</div>

_Note: [runc](https://github.com/opencontainers/runc) is owned by [Open Container Initiative (OCI)](https://www.opencontainers.org). [containerd](https://github.com/containerd/containerd) and [Notary](https://github.com/theupdateframework/notary) are owned by [Cloud Native Computing Foundation (CNCF)](https://www.cncf.io)._

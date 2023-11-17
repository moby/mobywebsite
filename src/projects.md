---
title: Moby projects and SIGs
layout: projects
---

<div class="lead">
Moby is an open-source project, created by Docker, to enable and accelerate software containerization.
</div>

![Moby projects]({{ 'images/dockercon-2017-eu.000.jpeg' | relative_url }})

The projects themselves provide a "Lego set" of toolkit components, the framework for assembling them into custom container-based systems, and a place for all container enthusiasts and professionals to experiment and exchange ideas.

<br />

### List of Moby Projects

<div class="row">
<div class="col align-self-center">
{% for project in site.data.projects %}
<div class="github-card repo-card">
    <div class="header">
        <a class="avatar" id="{{project}}-login" target="_top">
            <img id="{{project}}-image">
        </a>
        <strong class="name">
            <a target="_top" id="{{project}}-name"></a>
            <sup class="language" id="{{project}}-language"></sup>
        </strong>
        <span>Created by <a id="{{project}}-creator" target="_top"></a></span>
        <a class="button" id="{{project}}-button" target="_top">Star</a>
    </div>
    <div class="content" id="{{project}}-description"><p></p></div>
    <div class="footer">
        <span class="status"><strong id="{{project}}-forks"></strong>Forks</span>
        <span class="status"><strong id="{{project}}-stars"></strong>Stars</span>
    </div>
</div>
<script>
fetch('https://api.github.com/repos/{{project}}')
  .then((response) => response.json())
  .then((json) => {
    document.getElementById("{{project}}-login").href = json.html_url;
    document.getElementById("{{project}}-image").src = json.owner.avatar_url + "&s48";
    document.getElementById("{{project}}-name").href = json.html_url;
    document.getElementById("{{project}}-name").innerHTML = json.name;
    document.getElementById("{{project}}-creator").href = json.owner.html_url;
    document.getElementById("{{project}}-creator").innerHTML = json.owner.login;
    document.getElementById("{{project}}-button").href = json.html_url;
    document.getElementById("{{project}}-language").innerHTML = json.language;
    document.getElementById("{{project}}-description").innerHTML = json.description;
    document.getElementById("{{project}}-forks").innerHTML = json.forks;
    document.getElementById("{{project}}-stars").innerHTML = json.watchers_count;
    });
</script>
{% endfor %}
</div>
</div>

_Note: [runc](https://github.com/opencontainers/runc) is owned by [Open Container Initiative (OCI)](https://www.opencontainers.org). [containerd](https://github.com/containerd/containerd) and [Notary](https://github.com/theupdateframework/notary) are owned by [Cloud Native Computing Foundation (CNCF)](https://www.cncf.io)._

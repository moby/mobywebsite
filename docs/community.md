---
title: Moby
layout: community
---

<section class="contributor-grid flex">
<div class="container">
<h2 class="heading-center">Meet our contributors</h2>
<div class="row">
{% for contributor in site.data.contributors %}
{% capture url_to_fetch %}
https://api.github.com/users/{{ contributor }}
{% endcapture %}
{% fetch_and_render url_to_fetch github-user-card.html %}
{% endfor %}
</div></section>
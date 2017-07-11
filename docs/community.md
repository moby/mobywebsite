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
</div></div></section>

<!-- <section class="yout-playlist">
  <div class="container">
    <div class="row">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLkA60AVN3hh_eRYZIlUEYQFNN69iulTAk" frameborder="0" allowfullscreen></iframe>   
    </div>
  </div>
</section>  
 -->
<section class="section-community">
   <div class="container">
      <h2 class="heading-center">Moby Summits</h2>
      <p>Moby Summits allow community members to meet in person and share what they're doing with the various Moby projects. <a href="/summit/">The Moby Summit page</a> contains links to previous summits summaries, as well as information and planning documents for the next one.
      </p>
   </div>
</section>
<section class="section-community">
   <div class="container">
      <h2 class="heading-center">What is the community saying?</h2>
      <div class="twitter">
         <a class="twitter-timeline" href="https://twitter.com/moby">Tweets by moby</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
      </div>
   </div>
</section>
<div class="strip-2">
   <div class="container">
    {% include social.html %}
   </div>
</div>
<section class="section-calendar">
   <div class="container">
   <div class="row">
      <div class="col-lg-7 block-alternate">
      <h2>Moby Community Calendar</h2>
      <p>Use <a href="https://docs.google.com/forms/d/e/1FAIpQLSfA0ptPEUOdjq6Pdxs9T4DOT_2_Hhfk3ff4vPqJG3GmTFNH4g/viewform">this form</a> to submit events featuring talks about Moby Project and it's components: runC / containerd, LinuxKit, Infrakit, SwarmKit, HyperKit, DataKit, VPNKit, Notary, libnetwork, etc.
         Events submitted to the Moby Community Calendar will then be featured on the website and promoted via various social channels.
      </p>
   	</div>
   </div>
      <div class="calendar">
         <iframe src="https://calendar.google.com/calendar/embed?src=docker.com_t5cno8bhbtjkdle3o6a0qjdtus%40group.calendar.google.com&ctz=America/Los_Angeles" style="border: 0" width="100%" height="600" frameborder="0" scrolling="no"></iframe>
      </div>
   </div>
</section>
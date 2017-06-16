---
title: Moby
layout: home
---

<!-- <div id="what" class="chart-container">
   <div class="strip">
      <div class="chart">
         {% include chart.html %}
      </div>
   </div>
</div> -->

<section class="about">
  <div class="container">
   <div class="row">
      <div class="col-lg-9 block-alternate">
         <h2>What is Moby?</h2>
         <p class="lead">Moby is an open framework created by Docker to assemble specialized container systems without reinventing the wheel. It provides a “lego set” of dozens of standard components and a framework for assembling them into custom platforms. At the core of Moby is a framework to assemble specialized container systems wich provides:</p>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-4 block">
      <div class="icon">
         <img src="/images/components.svg">
      </div>
         <h3>Components</h3>
         <p>A library of containerized components for all vital aspects of a container system: OS, container runtime, orchestration, infrastructure management, networking, storage, security, build, image distribution, etc.</p>
      </div>
      <div class="col-lg-4 block">
         <div class="icon">
         <img src="/images/tools.svg">
      </div>
         <h3>Tools</h3>
         <p>
            Tools to assemble the components into runnable artifacts for a variety of platforms and architectures: bare metal (both x86 and Arm); executables for Linux, Mac and Windows; VM images for popular cloud and virtualization providers.
         </p>
      </div>
      <div class="col-lg-4 block">
         <div class="icon">
         <img src="/images/assemblies.svg">
      </div>
         <h3>Assemblies</h3>
         <p>A set of reference assemblies which can be used as-is, modified, or used as inspiration to create your own. All Moby components are containers, so creating new components is as easy as building a new OCI-compatible container.
         </p>
      </div>
   </div>
   <div class="gradient-bar">
   <p>Moby uses containerd as the default container runtime.</p>
   </div>
   </div>
</section>
<section class="section-usage">
   <div class="container">
   <div class="row">
      <div class="col block-vertical">
         <h3>Moby IS RECOMMENDED for anyone who wants to assemble a container-based system.</h3>
         <ul>
            <li>Hackers who want to customize or patch their Docker build</li>
            <li>System engineers or integrators building a container system</li>
            <li>Infrastructure providers looking to adapt existing container systems to their environment</li>
            <li>Container enthusiasts who want to experiment with the latest container tech</li>
            <li>Open-source developers looking to test their project in a variety of different systems</li>
            <li>Anyone curious about Docker internals and how it’s built</li>
         </ul>
      </div>
      <div class="col block-vertical">
         <h3>Moby is NOT recommended for the following use cases:</h3>
         <ul>
            <li>Application developers looking for an easy way to run their applications in containers. We recommend Docker CE instead.</li>
            <li>Enterprise IT and development teams looking for a ready-to-use, commercially supported container platform. We recommend Docker EE instead.</li>
            <li>Anyone curious about containers and looking for an easy way to learn. We recommend the docker.com website instead</li>
         </ul>
      </div>
      <div class="gradient-bar">
         <p>You can get started with Moby by running some of the examples assemblies in the LinuxKit GitHub repository.</p>
      </div>
   </div>
</div>
</section>
<section class="section-city">
		<div class="container">
			<div class="row">
		   		<div class="col-md-5 block-alt">
		   		<h3>Moby defines the future in product assembly management.</h3>
				<p class="alt">Product search, are a few of the services they offer. It used to be only a few years ago where Google dominated the Search Engine market. Due largely to the fact that their search technology was the most advanced. </p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
              Watch the video
            </button>
				</div>
			</div>
	</div>
</section>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
<!--       <div class="modal-header">
      <img src="/images/moby.svg">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> -->
      <div class="modal-body">
      <iframe width="400" height="100%" src="https://www.youtube.com/embed/cRczhEvSH2A" frameborder="0" allowfullscreen></iframe>
      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>
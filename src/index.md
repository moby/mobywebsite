---
title: Moby
layout: home
---

<section class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 block-alternate">
                <h2>What is Moby?</h2>
                <p class="lead">Moby is an open framework created by Docker to assemble specialized container systems without reinventing the wheel. It provides a “lego set” of dozens of standard components and a framework for assembling them into custom platforms. At the core of Moby is a framework to assemble specialized container systems which provides:</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4 block">
                <div class="icon">
                    <img src="{{ 'images/components.svg' | relative_url }}">
                </div>
                <h3>Components</h3>
                <p>A library of containerized components for all vital aspects of a container system: OS, container runtime, orchestration, infrastructure management, networking, storage, security, build, image distribution, etc.</p>
            </div>
            <div class="col-md-6 col-lg-4 block">
                <div class="icon">
                    <img src="{{ 'images/tools.svg' | relative_url }}">
                </div>
                <h3>Tools</h3>
                <p>
                    Tools to assemble the components into runnable artifacts for a variety of platforms and architectures: bare metal (both x86 and Arm); executables for Linux, Mac and Windows; VM images for popular cloud and virtualization providers.
                </p>
            </div>
            <div class="col-md-6 col-lg-4 block">
                <div class="icon">
                    <img src="{{ 'images/assemblies.svg' | relative_url }}">
                </div>
                <h3>Assemblies</h3>
                <p>A set of reference assemblies which can be used as-is, modified, or used as inspiration to create your own. All Moby components are containers, so creating new components is as easy as building a new OCI-compatible container.
                </p>
            </div>
        </div>
        <div class="gradient-bar">
            <p>Moby uses <a href="https://github.com/containerd/containerd" target="_blank">containerd</a> as the default container runtime.</p>
        </div>
    </div>
</section>
<section class="section-usage">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 block-vertical">
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
            <div class="col-lg-6 block-vertical">
                <h3>Moby is NOT recommended for the following use cases:</h3>
                <ul>
                    <li>Application developers looking for an easy way to run their applications in containers. We recommend Docker CE instead.</li>
                    <li>Enterprise IT and development teams looking for a ready-to-use, commercially supported container platform. We recommend Mirantis Container Runtime instead.</li>
                    <li>Anyone curious about containers and looking for an easy way to learn. We recommend the docker.com website instead</li>
                </ul>
            </div>
        </div>
    </div>
</section>
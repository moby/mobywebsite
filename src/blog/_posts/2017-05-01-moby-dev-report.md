---
title: Moby Dev Report 2017-05-01
layout: post
author: Moby Dev Team
author-url: https://github.com/moby/moby/blob/4f3c5b2568c28a4e0fd1b69ec6f2e0a0715d8cf5/reports/2017-05-01.md
excerpt_separator: <!--more-->
---

## Moby Dev Report

This is the 1st report, since the Moby project was announced at DockerCon. Thank you to everyone that stayed an extra day to attend the summit on Thursday.<!--more-->

## Daily Meeting

A daily meeting is hosted on [slack](dockercommunity.slack.com) every business day at 9am PST on the channel `#moby-project`.
During this meeting, we are talking about the [tasks](https://github.com/moby/moby/issues/32867) needed to be done for splitting moby and docker.

## Topics discussed last week

### The moby tool

The moby tool currently lives at [https://github.com/moby/tool](https://github.com/moby/tool), it's only a temporary place and will soon be merged in [https://github.com/moby/moby](https://github.com/moby/moby).

### The CLI split

Ongoing work to split the Docker CLI into [https://github.com/docker/cli](https://github.com/docker/cli) is happening [here](https://github.com/moby/moby/pull/32694).
We are almost done, it should be merged soon.

### Mailing list

Slack works great for synchronous communication, but we need to place for async discussion. A mailing list is currently being setup.

#### Find a good and non-confusing home for the remaining monolith

Lots of discussion and progress made on this topic, see [here](https://github.com/moby/moby/issues/32871). The work will start this week.

## Componentization

So far only work on the builder happened regarding the componentization effort.

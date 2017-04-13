# Moby website

Website for the moby project.

The Moby website is built using Jekyll and published to Github pages.

## Developing locally

In order to build and test locally:
```
docker run -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages
```
Then browser to localhost:4000 to see the rendered site. The site autorefreshes when you modify files locally.

## Staging

When you push to this repository, it triggers an autobuild of the docker/mobywebsite image, which is autodeployed to a password protected staging website at [https://mobyweb.docker.team/](https://mobyweb.docker.team/). Use your docker.com account to see it.



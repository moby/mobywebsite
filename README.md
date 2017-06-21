# Moby website

Website for the moby project.

The Moby website is built using Jekyll and published to Github pages.

## Developing locally

In order to build and test locally, run this command in the docs directory:
```
docker run -ti -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages
```
Then browser to localhost:4000 to see the rendered site. The site autorefreshes when you modify files locally.

## Staging

When you push to this repository on the `theme-start` branch, it triggers an autobuild of the `docker/mobywebsite` private image, which is autodeployed to a password protected staging website at [https://mobyweb.docker.team/](https://mobyweb.docker.team/). This is for Docker design team to test big redesigns without changing production. Docker employees can use their docker.com account login to access it.

## Production

The Moby project website container image is built automatically with a private image, `docker/mobywebsite:latest`. Any push or PR mergin to the master branch triggers an autobuild.

The autobuild uses Docker Hub hooks: a [pre_build](https://github.com/moby/mobywebsite/blob/master/docs/hooks/pre_build) hook script uses the `starefossen/github-pages` image to generate the html from markdown, then the project's [Dockerfile](https://github.com/moby/mobywebsite/blob/master/docs/Dockerfile) is used to build the image, adding that generated content to an Nginx image, with some [Nginx config](https://github.com/moby/mobywebsite/blob/master/docs/nginx/default.conf).

A Docker stack managed in Docker Cloud is autoredeployed everytime this image changes, to [http://web.mobywebsite-prod.8d7e1615.svc.dockerapp.io/](http://web.mobywebsite-prod.8d7e1615.svc.dockerapp.io/).

DNS is managed using Amazon Route53. The backend website is fronted by an Amazon CloudFront distribution that does caching and SSL termination. When a new version of the image is built, a [post_push](https://github.com/moby/mobywebsite/blob/master/docs/hooks/post_push) hook invalidates the cloudfront cache for the distribution.

For design or content issues with this website, please log an issue in this repo. For production issues please ping `website@mobyproject.org`.




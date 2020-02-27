# Moby website

Website for the moby project.

The Moby website is built using Jekyll and published to Github pages.

## Developing locally

In order to build and test locally, run this command in the docs
directory:

```bash
$ docker run -ti -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages
```
Then browser to localhost:4000 to see the rendered site. The site autorefreshes when you modify files locally.

If you want to test blog posts with a data in the future, use the following command instead.

```bash
$ docker run -ti -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages jekyll serve -d /_site --watch --force_polling -H 0.0.0.0 -P 4000 --future true
```

## GitHub API rate limits

This site uses the GitHub API to dynamically fetch project and users profiles. If you start seeing GitHub rate limit messages in the logs such as `API rate limit exceeded`, you need to create a [GitHub Oauth application](https://github.com/settings/developers) for yourself and set the `GITHUB_CLIENT_SECRET` and `GITHUB_CLIENT_SECRET` environment variables with the values for that application for your container. This bumps up the rate limit from 60 to 5000 per whatever time period they are using.

```bash
$ docker run -ti -v "$PWD":/usr/src/app -p "4000:4000" -e "GITHUB_CLIENT_ID=xxx" -e "GITHUB_CLIENT_SECRET=yyy" starefossen/github-pages
```

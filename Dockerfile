# syntax=docker/dockerfile:1

ARG RUBY_VERSION=2.7.6
ARG BUNDLER_VERSION=2.3.13

ARG JEKYLL_ENV=development
ARG BASEURL=/

# Base stage for building
FROM ruby:${RUBY_VERSION}-alpine AS base
WORKDIR /src
RUN apk add --no-cache bash build-base git

# Gem stage will install bundler used as dependency manager
# for our dependencies in Gemfile for Jekyll
FROM base AS gem
ARG BUNDLER_VERSION
COPY Gemfile* .
RUN gem uninstall -aIx bundler \
  && gem install bundler -v ${BUNDLER_VERSION} \
  && bundle install --jobs 4 --retry 3

# Vendor Gemfile for Jekyll
FROM gem AS vendored
ARG BUNDLER_VERSION
RUN bundle update \
  && mkdir /out \
  && cp Gemfile.lock /out

# Stage used to output the vendored Gemfile.lock:
# > make vendor
# or
# > docker buildx bake vendor
FROM scratch AS vendor
COPY --from=vendored /out /

# Build the static HTML for the current docs.
# After building with jekyll, fix up some links
FROM gem AS generate
ARG JEKYLL_ENV
ARG BASEURL
ENV TARGET=/out
RUN --mount=type=bind,target=.,rw \
    --mount=type=cache,target=/src/.jekyll-cache <<EOT
  set -ex
  bundle exec jekyll build --profile -b ${BASEURL} -d ${TARGET} --config _config.yml
EOT

# Release the generated files in a scratch image
# Can be output to your host with:
# > make release
# or
# > docker buildx bake release
FROM scratch AS release
COPY --from=generate /out /

# Create a runnable nginx instance with generated HTML files.
# When the image is run, it starts Nginx and serves the docs at port 4000:
# > make deploy
# or
# > docker-compose up --build
FROM nginx:alpine AS deploy
COPY --from=release / /usr/share/nginx/html
COPY contrib/nginx/default.conf /etc/nginx/conf.d/default.conf
ARG JEKYLL_ENV
ENV JEKYLL_ENV=${JEKYLL_ENV}
CMD echo -e "Website is available at:\nhttp://0.0.0.0:4000 (build target: ${JEKYLL_ENV})"; exec nginx -g 'daemon off;'

FROM deploy

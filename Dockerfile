FROM openjdk:8-jdk-alpine
MAINTAINER OneSpot <dev@onespot.com>

# Create a onespot group and user.
# Install the components common to all apps.
# https://github.com/yelp/dumb-init: lightweight init system
# su-exec: sudo replacement
RUN addgroup onespot && \
    adduser -S -G onespot onespot && \
    apk add --no-cache bash dumb-init su-exec ca-certificates

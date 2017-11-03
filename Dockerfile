FROM openjdk:8u141-jdk
MAINTAINER OneSpot <dev@onespot.com>

# Create a onespot group and user.
# Install the components common to all apps.
# https://github.com/yelp/dumb-init: lightweight init system
# su-exec: sudo replacement
RUN addgroup onespot && \
    adduser -S -G onespot onespot && \
    mkdir /tmp/kafka-streams && \
    chown onespot:onespot /tmp/kafka-streams && \
    apk add --no-cache bash dumb-init su-exec ca-certificates

VOLUME /tmp/kafka-streams

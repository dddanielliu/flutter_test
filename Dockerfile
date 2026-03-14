FROM ghcr.io/cirruslabs/flutter:3.41.4 AS dev

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    clang cmake ninja-build pkg-config libgtk-3-dev mesa-utils iputils-ping

RUN flutter --disable-analytics

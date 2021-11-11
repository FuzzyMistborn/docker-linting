FROM ubuntu:slim

ARG BUILD_DATE

LABEL \
  maintainer="FuzzyMistborn" \
  org.opencontainers.image.authors="FuzzyMistborn" \
  org.opencontainers.image.title="docker-linting" \
  org.opencontainers.image.description="Installs ansible-lint and yaml-lint for linting" \
  org.opencontainers.image.created=$BUILD_DATE

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    python3-pip \
    python3-setuptools \
    software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install "ansible-lint[core,yamllint]"

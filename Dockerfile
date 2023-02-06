FROM python:3.10-slim

ARG BUILD_DATE
ARG VCS_REF

LABEL \
  maintainer="FuzzyMistborn <fuzzy@fuzzymistborn.com>" \
  architecture="amd64/x86_64" \
  python-version="3.10" \
  org.opencontainers.image.title="docker-linting" \
  org.opencontainers.image.authors="FuzzyMistborn <fuzzy@fuzzymistborn.com>" \
  org.opencontainers.image.description="Installs ansible-lint and yaml-lint for linting" \
  org.opencontainers.image.source="https://github.com/FuzzyMistborn/docker-linting" \
  org.opencontainers.image.revision=$VCS_REF \
  org.opencontainers.image.created=$BUILD_DATE

RUN apt-get update && apt-get -y install git
RUN pip3 install "ansible"
RUN pip3 install "ansible-lint"

FROM python:3.8-slim

ARG BUILD_DATE
ARG VCS_REF

LABEL \
  maintainer="FuzzyMistborn <fuzzy@fuzzymistborn.com>" \
  architecture="amd64/x86_64" \
  python-version="3.8" \
  org.opencontainers.image.title="docker-linting" \
  org.opencontainers.image.authors="FuzzyMistborn <fuzzy@fuzzymistborn.com>" \
  org.opencontainers.image.description="Installs ansible-lint and yaml-lint for linting" \
  org.opencontainers.image.source="https://github.com/FuzzyMistborn/docker-linting" \
  org.opencontainers.image.revision=$VCS_REF \
  org.opencontainers.image.created=$BUILD_DATE

RUN pip3 install "ansible-lint[core,yamllint]"

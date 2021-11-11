FROM python:3.8-slim

ARG BUILD_DATE

LABEL \
  maintainer="FuzzyMistborn" \
  org.opencontainers.image.authors="FuzzyMistborn" \
  org.opencontainers.image.title="docker-linting" \
  org.opencontainers.image.description="Installs ansible-lint and yaml-lint for linting" \
  org.opencontainers.image.created=$BUILD_DATE

RUN pip3 install "ansible-lint[core,yamllint]"

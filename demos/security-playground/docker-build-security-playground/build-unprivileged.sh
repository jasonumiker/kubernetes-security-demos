#!/bin/bash
docker buildx create --name mybuilder --bootstrap --use
docker buildx build --push --file ./Dockerfile-unprivileged \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/security-playground-unprivileged:201024 \
  .
docker buildx build --push --file ./Dockerfile-unprivileged \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/security-playground-unprivileged:latest \
  .
docker buildx rm mybuilder
#!/bin/bash
docker buildx create --name mybuilder --bootstrap --use
docker buildx build --push \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/postgres-sakila:201024 \
  .
docker buildx build --push \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/postgres-sakila:latest \
  .
docker buildx rm mybuilder
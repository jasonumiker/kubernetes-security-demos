docker buildx create --name mybuilder --bootstrap --use
docker buildx build --push \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/hello-app:201024 \
  .
docker buildx build --push \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/hello-app:latest \
  .
docker buildx rm mybuilder
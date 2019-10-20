FROM registry:2

# embed the policies inside the image
COPY registry /var/lib/registry

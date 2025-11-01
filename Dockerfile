# ===========================================================================
# DOCKER IMAGE: Hugo site served via NGINX
# ===========================================================================
# This Dockerfile creates a lightweight container using Alpine Linux
# to serve a statically generated Hugo website using NGINX.
# The resulting image is optimized for size and security.
# ===========================================================================

# Base image: NGINX Alpine for minimal footprint
# Using specific version (1.25) for stability and reproducibility
# Alpine variant reduces image size significantly compared to Debian-based images
FROM nginx:1.25-alpine

# Set working directory to NGINX's default HTML serving location
# This is where NGINX expects to find the content to serve
WORKDIR /usr/share/nginx/html

# Copy the statically generated Hugo site files (from ./public directory)
# into the NGINX serving directory. These files are created during the
# Hugo build process before Docker image creation.
# 
# Note: This assumes the Hugo site has already been built and the
# output is available in the ./public directory
COPY ./public /usr/share/nginx/html

# Document which port the container exposes
# NGINX listens on port 80 by default for HTTP traffic
# The /tcp is explicit documentation that this uses TCP protocol
EXPOSE 80/tcp

# No CMD or ENTRYPOINT is specified because we inherit these from
# the base NGINX image, which starts NGINX automatically

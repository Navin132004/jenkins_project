FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Remove default nginx page
RUN rm -f /var/www/html/index.nginx-debian.html

# Copy your custom index.html
COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

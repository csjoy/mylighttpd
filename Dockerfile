# Pull Base Image
FROM docker.io/library/debian:latest

# Load maintainer info
MAINTAINER csjoy

# Install required packages
RUN echo "Updating all debian packages"; apt update && echo "Installing lighttpd"; apt install lighttpd -y && echo "Removing apt cache"; apt clean

# Copy web content
COPY index.html /var/www/html

# Command executed at the entrypoint 
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
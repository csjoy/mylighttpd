FROM docker.io/library/debian:latest
RUN apt update && apt install lighttpd -y && apt clean
COPY index.html /var/www/html
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
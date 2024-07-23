FROM nginx:alpine-slim

LABEL org.opencontainers.image.source="https://github.com/cssnr/docker-nginx-static"

ENV TZ=UTC

COPY nginx.conf /etc/nginx/nginx.conf

COPY --chmod=0755 perms.sh /docker-entrypoint.d/

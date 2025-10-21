FROM nginx:alpine-slim

ENV TZ=UTC

LABEL org.opencontainers.image.source="https://github.com//docker-nginx-static"
LABEL org.opencontainers.image.description="Docker Nginx Static"
LABEL org.opencontainers.image.authors="cssnr"

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY --chmod=0755 10-setup.sh /docker-entrypoint.d

COPY nginx.conf /etc/nginx/nginx.conf

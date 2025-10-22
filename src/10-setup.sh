#!/usr/bin/env sh

set -e

echo "Running: ${0}"

_NGINX_INDEX="index.html index.htm"
_STATIC="/static"

echo "STATIC: ${STATIC:-$_STATIC}"
echo "SUID: ${SUID:-1000}"
echo "NGINX_INDEX: ${NGINX_INDEX:=$_NGINX_INDEX}"

sed "s/NGINX_INDEX/${NGINX_INDEX:=$_NGINX_INDEX}/g" \
    -i /etc/nginx/nginx.conf

: "${GZIP_TYPES:=*}"
echo "GZIP_TYPES: ${GZIP_TYPES}"
if [ "${GZIP_TYPES}" != "off" ];then
cat <<EOF >> /etc/nginx/conf.d/http.gzip.conf
gzip            on;
gzip_proxied    any;
gzip_min_length ${GZIP_LENGTH:-1000};
gzip_types      ${GZIP_TYPES};
EOF
fi

: "${ERROR_PAGE:=/404.html}"
if [ "${ERROR_PAGE}" != "off" ];then
    echo "error_page 404 ${ERROR_PAGE};" >> /etc/nginx/conf.d/location.auth.conf
fi

if [ -n "${BASIC_AUTH}" ];then
echo "BASIC_AUTH: ${BASIC_AUTH}"
printf '%s' "${BASIC_AUTH}" >> /etc/nginx/auth.users
cat <<EOF >> /etc/nginx/conf.d/location.auth.conf
auth_basic            "${BASIC_REALM:-Unauthorized}";
auth_basic_user_file  /etc/nginx/auth.users;
EOF
fi

echo "+ chown -R ${SUID:-1000}:${SUID:-1000} ${STATIC:-$_STATIC}"
chown -R "${SUID:-1000}:${SUID:-1000}" "${STATIC:-$_STATIC}"

echo "${0} - Done"

nginx -version ||:

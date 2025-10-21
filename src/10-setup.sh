#!/usr/bin/env sh

set -e

echo "Running: ${0}"

echo "STATIC: ${STATIC:-/static}"
echo "SUID: ${SUID:-1000}"

: "${GZIP_TYPES:=*}"
echo "GZIP_TYPES: ${GZIP_TYPES}"
if [ "${GZIP_TYPES}" != "off" ];then
cat <<EOF > /etc/nginx/conf.d/http.gzip.conf
gzip            on;
gzip_proxied    any;
gzip_min_length ${GZIP_LENGTH:-1000};
gzip_types      ${GZIP_TYPES};
EOF
fi

if [ -n "${BASIC_AUTH}" ];then
echo "BASIC_AUTH: ${BASIC_AUTH}"
printf '%s' "${BASIC_AUTH}" > /etc/nginx/auth.users
cat <<EOF > /etc/nginx/conf.d/location.auth.conf
auth_basic            "${BASIC_REALM:-Unauthorized}";
auth_basic_user_file  /etc/nginx/auth.users;
EOF
fi

echo "+ chown -R ${SUID:-1000}:${SUID:-1000} ${STATIC:-/static}"
chown -R "${SUID:-1000}:${SUID:-1000}" "${STATIC:-/static}"

echo "${0} - Done"

nginx -version ||:

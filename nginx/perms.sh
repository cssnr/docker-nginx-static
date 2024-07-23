#!/usr/bin/env sh

set -e

echo "Running: ${0}"

echo "STATIC: ${STATIC:-/static}"
echo "SUID: ${SUID:-1000}"

echo "Setting Permissions ${SUID:-1000}:${SUID:-1000} on ${STATIC:-/static}"
chown -R "${SUID:-1000}:${SUID:-1000}" "${STATIC:-/static}"

echo "Done"

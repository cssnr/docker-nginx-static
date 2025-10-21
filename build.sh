#!/usr/bin/env bash

set -e

REGISTRY_HOST="ghcr.io"
REGISTRY_USER="cssnr"
REGISTRY_REPO="docker-nginx-static"

BUILD_CONTEXT="src"
DEFAULT_VERSION="latest"

if [ -f ".env" ];then
    echo "Sourcing Environment: .env"
    set -a
    source ".env"
fi

VERSION="${1}"
[[ -z "${VERSION}" ]] && VERSION="${DEFAULT_VERSION}"

#if [ -z "${VERSION}" ];then
#    if [ -z "${1}" ];then
#        read -rp "Version: " VERSION
#    else
#        VERSION="${1}"
#    fi
#fi

#if [ -z "${USERNAME}" ];then
#    read -rp "Username: " USERNAME
#fi
#if [ -z "${PASSWORD}" ];then
#    read -rp "Password: " PASSWORD
#fi

echo "${REGISTRY_HOST}/${REGISTRY_USER}/${REGISTRY_REPO}:${VERSION}"

read -rp "Press <enter> to run docker build..."

docker build -t "${REGISTRY_HOST}/${REGISTRY_USER}/${REGISTRY_REPO}:${VERSION}" \
    "${BUILD_CONTEXT}"


#docker login --username "${USERNAME}" --password "${PASSWORD}" "${REGISTRY_HOST}"
#docker login "${REGISTRY_HOST}"

#docker buildx create --use
#docker buildx build --platform linux/amd64,linux/arm64 --push \
#    -t "${REGISTRY_HOST}/${REGISTRY_USER}/${REGISTRY_REPO}:${VERSION}" nginx

#docker push "${REGISTRY_HOST}/${REGISTRY_USER}/${REGISTRY_REPO}:${VERSION}"

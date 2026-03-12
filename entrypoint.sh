#!/bin/sh
set -e

# Default to v1 if not set
APP_VERSION=${APP_VERSION:-v1}

echo "Starting NGINX with APP_VERSION=${APP_VERSION}"

envsubst '$APP_VERSION' \
  < /etc/nginx/templates/nginx.conf.template \
  > /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'


#!/bin/sh

RESOLVER_NAME=$1

if [ -z "$RESOLVER_NAME" ]; then
  echo "Usage: $0 <resolver_name>"
  exit 1
fi

echo "Overriding certResolver to $RESOLVER_NAME..."
sed -i "s/certResolver: letsencrypt_prod/certResolver: $RESOLVER_NAME/g" src/shared/static-config/traefik.yml

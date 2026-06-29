#!/bin/sh

TARGET_FILE=$1
RESOLVER_NAME=$2

if [ -z "$TARGET_FILE" ] || [ -z "$RESOLVER_NAME" ]; then
  echo "Usage: $0 <target_file> <resolver_name>"
  exit 1
fi

if [ ! -f "$TARGET_FILE" ]; then
  echo "Error: Target file '$TARGET_FILE' does not exist."
  exit 1
fi

echo "Overriding certResolver in $TARGET_FILE to $RESOLVER_NAME..."
sed -i "/certResolver/s/letsencrypt_prod/$RESOLVER_NAME/g" "$TARGET_FILE"

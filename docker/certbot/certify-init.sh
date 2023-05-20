#!/bin/sh 

# Wait for proxy to be available, then gets the first certificate

set -e

until nc -z proxy 80; do
    echo "Waiting for proxy to be available..."
    sleep 5s & wait ${!}
done

echo "Getting certificate for ${DOMAIN}..."

certbot certonly \
    --webroot \
    -webroot-path /vol/www/ \
    -d ${DOMAIN} \
    --email ${EMAIL} \
    --agree-tos \
    --non-interactive


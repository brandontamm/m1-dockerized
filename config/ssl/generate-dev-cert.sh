#!/bin/sh
# Generate a local-only self-signed certificate for docker-compose volume mounts.
# Output paths match docker-compose.yml and are listed in .gitignore.

set -e
cd "$(dirname "$0")"

openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
  -keyout cert.key \
  -out cert.pem \
  -subj "/CN=dockerized-magento.local/O=local-dev/C=DE"

openssl req -new -key cert.key -out cert.csr -subj "/CN=dockerized-magento.local/O=local-dev/C=DE"

echo "Wrote cert.pem, cert.key, and cert.csr (all gitignored)."

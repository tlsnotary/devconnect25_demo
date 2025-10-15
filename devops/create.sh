#!/bin/bash
cd "$(dirname "$0")" || exit 1
if [ ! -f ./certs/fullchain.pem ]; then
    mkdir -p ./certs
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./certs/privkey.pem -out ./certs/fullchain.pem -subj '/C=US/ST=State/L=City/O=Organization/CN=localhost';
fi

#! /bin/bash

openssl \
req \
-newkey rsa:2048 \
-days 365 \
-nodes \
-x509 \
-subj "/C=US/ST=Texas/L=Austin/O=Homelab/OU=Homelab/CN=confluence.homelab.hackingserver.com" \
-keyout ./private/app.key -out ./private/app.crt

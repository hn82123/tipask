#!/bin/bash

chmod 777 storage -R
chmod 777 bootstrap/cache
touch .env && chmod 777 .env

if [[ $# -eq 0 ]]; then
    exec apache2-foreground
else
    exec "$@"
fi

#!/bin/bash
set -e
if ! [ -d "./vendor" ]; then
    composer install --ignore-platform-reqs  --no-interaction --verbose --no-suggest
    php artisan migrate:refresh --seed
fi
exec "$@"
set -- php-fpm
exec "$@"

#!/bin/bash

VENDOR_DIR="vendor"

if [ ! -d "$VENDOR_DIR" ]; then composer install; fi

php artisan key:generate
php artisan migrate
php-fpm
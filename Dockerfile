FROM php:8.3-cli

# 必要パッケージ
RUN apt-get update && apt-get install -y \
    git unzip libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# Laravel起動用
CMD php artisan serve --host=0.0.0.0 --port=8000
FROM php:7.4-cli

RUN apt-get update && apt-get install -y \
      libzip-dev \
      sqlite3 \
      racket \
      git \
      libpq-dev \
      && docker-php-ext-install zip pdo pdo_pgsql bcmath pgsql exif

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app

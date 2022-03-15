FROM php:8.1-fpm

RUN apt-get update && apt-get install -y

RUN apt-get install -y --no-install-recommends \
        && apt-get install -y git \
        && apt-get install -y curl \
        && apt-get install -y zlib1g-dev \
        && apt-get install -y libxml2-dev \
        && apt-get install -y libzip-dev \
        && apt-get install -y libpq-dev \
        && apt-get install -y nano \
    && docker-php-ext-install \
        intl \
        pdo \
        pgsql \
        pdo_pgsql \
        opcache

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN mv /root/composer.phar /usr/local/bin/

WORKDIR /app
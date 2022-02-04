FROM php:7.4-fpm

WORKDIR "/application"

RUN apt-get update && apt-get install -y \
    && apt-get install -y apt-utils \
    && apt-get install -y git \
    && apt-get install -y curl \
    && apt-get install -y libpng-dev \
    && apt-get install -y libonig-dev \
    && apt-get install -y libxml2-dev \
    && apt-get install -y zip \
    && apt-get install -y unzip\
    && apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql --with-pgsql=/usr/local/pgsql \
    && docker-php-ext-configure pdo_pgsql --with-pdo-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pgsql pdo_pgsql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

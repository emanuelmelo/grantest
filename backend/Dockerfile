FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    && apt-get install -y git \
    && apt-get install -y curl \
    && apt-get install -y libpng-dev \
    && apt-get install -y libonig-dev \
    && apt-get install -y libxml2-dev \
    && apt-get install -y zip \
    && apt-get install -y unzip

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure pgsql --with-pgsql=/usr/local/pgsql \
    && docker-php-ext-configure pdo_pgsql --with-pdo-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pgsql pdo_pgsql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

WORKDIR /application

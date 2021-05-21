FROM php:7-fpm-alpine
RUN apk add --no-cache \
        zip \
        libzip-dev \
        libpng \
        libpng-dev \
        libjpeg \
        icu \
        icu-dev \
        libxml2 \
        libxml2-dev \
        openssl \
        openssl-dev 
RUN docker-php-ext-install \
        pdo_mysql \
        mysqli \
        gd \
        intl \
        xml \
        opcache \
        zip
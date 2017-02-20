FROM php:7.1-apache

MAINTAINER <Igor Krasilich igor.krasilich@gmail.com>

RUN apt-get update \
    && apt-get install -y \
        git \
        libicu-dev \
        libjpeg-dev \
        libmcrypt-dev \
        libmcrypt4 \
        libpng12-dev \
        libxml2-dev \
        libxslt-dev \
        zlib1g-dev \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/lib \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install opcache \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install soap \
    && docker-php-ext-install xsl \
    && docker-php-ext-install zip \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY config/php.ini /usr/local/etc/php/
COPY config/xdebug.ini /usr/local/etc/php/conf.d/
RUN pecl install -s xdebug
RUN echo "zend_extension=$(php-config --extension-dir)/xdebug.so\n$(cat /usr/local/etc/php/conf.d/xdebug.ini)" > /usr/local/etc/php/conf.d/xdebug.ini
RUN a2enmod rewrite && a2enmod headers

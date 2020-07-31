FROM php:7.4.8-cli

WORKDIR /tmp
RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev zlib1g-dev libicu-dev libonig-dev g++ zip unzip vim \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl pdo_mysql mysqli gd iconv \
  && apt-get clean

# install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer self-update
RUN composer global require hirak/prestissimo

# Install git
RUN apt-get install -y libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
RUN apt-get install -y git

WORKDIR /usr/src/myapp
COPY php.ini /usr/local/etc/php/

ENV PATH $PATH:/app/bin
ENV PATH $PATH:/app/vendor/bin

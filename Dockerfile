FROM php:8.3-apache

RUN apt-get update -y && apt-get install -y  libpng-dev

RUN docker-php-ext-install gd

COPY src/ /var/www/html/

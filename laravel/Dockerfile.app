FROM php:8.3.20RC1-fpm-alpine

WORKDIR /var/www

RUN docker-php-ext-install mysqli pdo_mysql

RUN apk update && apk add composer php-dom php-tokenizer php-session php-fileinfo php-xml php-simplexml php-xmlwriter

COPY . .

RUN chown -R www-data:www-data . && chmod -R 775 storage bootstrap/cache

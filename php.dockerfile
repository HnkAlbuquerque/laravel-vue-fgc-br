FROM php:8.1.0alpha3-fpm-alpine
WORKDIR /var/www/html
RUN docker-php-ext-install bcmath mysqli pdo pdo_mysql exif
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.5.1
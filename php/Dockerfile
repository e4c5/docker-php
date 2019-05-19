FROM php:7.3-fpm
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
WORKDIR /web/
CMD php -S 0.0.0.0:9000

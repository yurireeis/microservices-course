FROM php:7.0-fpm-alpine

WORKDIR /var/www
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apk add --no-cache bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh
RUN ln -s public html
EXPOSE 9000
FROM markoshust/magento-php:8.1-apache

WORKDIR /var/www/html

COPY . .

RUN composer install --no-interaction --ignore-platform-reqs

RUN chmod -R 755 . && chown -R www-data:www-data .

EXPOSE 80

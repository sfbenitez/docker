FROM php:7.0-apache
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com
VOLUME /var/log/apache2
RUN docker-php-ext-install mysqli
# Already enable when you install it
RUN docker-php-ext-enable mysqli

COPY --chown=www-data:www-data app /var/www/html
COPY info.php /var/www/html
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

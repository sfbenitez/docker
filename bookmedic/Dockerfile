FROM ubuntu
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com
VOLUME /var/log/apache2
RUN apt-get update \
  && apt-get install -y apache2 libapache2-mod-php7.0 php7.0-mysql \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*

COPY --chown=www-data:www-data app /var/www/html
RUN chown www-data:www-data -R /var/www/html

EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

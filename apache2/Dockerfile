FROM debian
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com

RUN apt-get update \
  && apt-get install -y apache2 \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*;


COPY index.html /var/www/html
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-D","FOREGROUND"]

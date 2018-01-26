FROM debian
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com
ENV DOCUMENTROOT=/var/www/html
ENV SERVER_NAME=_
ENV PORT=80

COPY index.html /var/www/html/index.html
COPY css /var/www/html/css
COPY run.sh /run.sh

RUN apt-get update \
  && apt-get install -y nginx \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/* \
  && chmod 700 /run.sh


EXPOSE 80
ENTRYPOINT ["/run.sh"]

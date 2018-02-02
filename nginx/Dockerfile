FROM debian
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com
ARG DOCUMENTROOT=/var/www/html
ARG SERVER_NAME=_
ENV DOCUMENTROOT=$DOCUMENTROOT
ENV SERVER_NAME=$SERVER_NAME


COPY index.html $DOCUMENTROOT/index.html
COPY css $DOCUMENTROOT/css
COPY run.sh /run.sh

RUN apt-get update \
  && apt-get install -y nginx \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*
RUN chmod 700 /run.sh


EXPOSE 80
CMD ["/run.sh"]

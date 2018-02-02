FROM debian
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com
ENV DOCUMENTROOT=$DOCUMENTROOT
ENV SERVER_NAME=$SERVER_NAME


COPY index.html $DOCUMENTROOT/index.html

COPY run.sh /run.sh

RUN apt-get update \
  && apt-get install -y apache2 php7.0 php7.0-mysql \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*
RUN chmod 700 /run.sh


EXPOSE 80
CMD ["/run.sh"]

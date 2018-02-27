FROM debian
MAINTAINER Sergio Ferrete Benítez sergioferretebenitez@gmail.com
ENV DOCUMENTROOT=/var/www
ENV SERVER_NAME=www.example.com

VOLUME /var/databases

COPY files/gestion_iaw.conf /tmp
COPY files/app /var/www
COPY config.sh /tmp/config.sh
COPY run.sh /run.sh

RUN apt-get update \
  && apt-get install -y python-pip apache2 libapache2-mod-wsgi \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*
RUN pip install -r /var/www/requirements.txt
RUN a2dissite 000-default && a2enmod wsgi
# RUN ls /var/databases
# RUN mkdir /var/databases
RUN /var/www/manage.py migrate && /var/www/manage.py loaddata /var/www/datos.json
RUN chown -R www-data:www-data /var/databases
RUN chmod -R 770 /var/databases
RUN chmod -R www-data:www-data /var/www
RUN chmod u+x /run.sh

EXPOSE 80
CMD ["/run.sh"]

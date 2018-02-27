apt-get update \
  && apt-get install -y python-pip apache2 libapache2-mod-wsgi \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*
pip install -r /var/www/requirements.txt
a2dissite 000-default
a2enmod wsgi
mkdir /var/databases
/var/www/manage.py migrate && /var/www/manage.py loaddata /var/www/datos.json

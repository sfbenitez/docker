#!/bin/bash
echo "
<VirtualHost *:80>
        ServerName $SERVER_NAME
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www
        WSGIDaemonProcess gestiona python-path=/var/www
        WSGIProcessGroup gestiona
        WSGIScriptAlias / /var/www/gestion/wsgi.py process-group=gestiona

        Alias /static/ /var/www/static/
        <Directory /var/www/static>
                Require all granted
        </Directory>
       <Directory /var/www/gestion>
                <Files wsgi.py>
                        Require all granted
                </Files>
        </Directory>
</VirtualHost>" > /etc/apache2/sites-available/gestion_iaw.conf
a2ensite gestion_iaw

/usr/sbin/apache2ctl -D FOREGROUND

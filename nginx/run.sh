echo "server {
        listen $PORT default_server;
        listen [::]:$PORT default_server;
        root $DOCUMENTROOT;
        server_name $SERVER_NAME;
}" > /etc/nginx/sites-available/default
/usr/sbin/nginx -g "daemon off;"

(echo "upstream app_server { server $APP_PORT_9000_TCP_ADDR:$APP_PORT_9000_TCP_PORT; }" && cat /etc/nginx/sites-available/default.base) > /etc/nginx/sites-available/default.new

mv /etc/nginx/sites-available/default.new /etc/nginx/sites-available/default


service nginx start
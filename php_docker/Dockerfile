#php dockerfile

FROM chenke91/nginx

#install php
RUN \
    apt-get update && \
    apt-get install -y php5-fpm php5-cli php5-cgi php5-dev && \
    apt-get install -y php5-curl php5-gd php5-mcrypt php5-mysql php5-pgsql php5-sqlite && \
    sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=1/' /etc/php5/cgi/php.ini && \
    sed -i 's/display_errors = Off/display_errors = On/' /etc/php5/cgi/php.ini

RUN apt-get install -y spawn-fcgi

RUN apt-get install -y python2.7 python-pip

RUN pip2 install phpsh

RUN apt-get install -y supervisor



RUN chown -R www-data:www-data /var/www

ADD default /etc/nginx/sites-available/default

ADD conf.d /etc/supervisor/conf.d

VOLUME ["/var/www", "/etc/supervisor/conf.d"]

WORKDIR /var/www

RUN echo '<?php echo phpinfo(); ?>' > /var/www/index.php

##usage
#php environment
# docker run --name phpenv -p 80:80 -d -v ~/share/dev/php:/var/www chenke91/php:0.0.1 bash -c 'service supervisor start && nginx'

#php shell
# docker run --name phpsh -it chenke91/php:0.0.1 phpsh


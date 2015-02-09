FROM chenke91/php

#download composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv ./composer.phar /usr/local/bin/composer

RUN composer config -l -g

ADD config.json ~/.composer/config.json

#laravel安装器
RUN composer global require "laravel/installer=~1.1"

#安装项目
RUN ~/.composer/vendor/bin/laravel new blog && chown -R www-data:www-data ./blog

RUN sed -i "s/var//www/var//www//blog//public/" /etc/nginx/sites-avalable/default

#安装mcrypt模块
RUN apt-get install -y mcrypt && php5enmod mcrypt




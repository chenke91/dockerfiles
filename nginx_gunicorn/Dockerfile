#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM 192.168.12.84/nginx

ADD default /etc/nginx/sites-available/default.base
ADD run.sh /etc/nginx/run.sh

# RUN sed -i "s/daemon off;/daemon on;/g" /etc/nginx/nginx.conf

RUN bash -c "chmod 777 /etc/nginx/run.sh"

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["bash", "/etc/nginx/run.sh"]

# Expose ports.
EXPOSE 80
EXPOSE 443


###usage

##  docker run  --name nginx-guaranty --volumes-from webdata --link gunicorn:app -p 80:80 -d 192.168.12.84/nginx-guaranty
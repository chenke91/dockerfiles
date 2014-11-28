FROM 192.168.12.84/mysql


RUN \
  service mysql start && \
  #echo "mysqld_safe &" > /tmp/config && \
  #echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
  echo "mysql -e 'CREATE DATABASE guaranty charset utf8;'" >> /tmp/config && \
  echo "mysql -e 'CREATE DATABASE guaranty_test charset utf8;'" >> /tmp/config
RUN \
  bash /tmp/config && \
  rm -f /tmp/config

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["mysqld_safe"]

# Expose ports.
EXPOSE 3306

#Run mysqld-safe
#docker run -d --name guaranty_db -p 3306:3306 192.168.12.84/guaranty_db

#Run mysql
#docker run -it --rm --link guaranty_db:guaranty_db 192.168.12.84/guaranty_db bash -c 'mysql -h $MYSQL_PORT_3306_TCP_ADDR'

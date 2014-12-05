#
# Python3 Dockerfile
#
#

# Pull base image.
FROM 192.168.12.84/basic

# Install Python3.
RUN \
  apt-get update && \
  apt-get install -y python3-dev python3-pip
RUN \
  apt-get install -y libxml2-dev libxslt1-dev libssl-dev && \
  rm -rf /var/lib/apt/lists/*


VOLUME ['/data']

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/bin/bash"]

#
# Python3-falsk Dockerfile
#
#

# Pull base image.
FROM 192.168.12.84/python

ADD requirement.txt /data/requirement.txt


# Install flask
RUN pip3 install -r /data/requirement.txt

VOLUME ['/data']

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/bin/bash"]

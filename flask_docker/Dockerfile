#
# Python3-falsk Dockerfile
#
#

# Pull base image.
FROM 192.168.12.84/python

ADD requirement.txt /data/requirement.txt


# Install flask
RUN pip3 install -r /data/requirement.txt && \
    rm /data/requirement.txt

#install flask-uploads
RUN git clone https://github.com/chenke91/flask-uploads && \
    cd flask-uploads && \
    python3 ./setup.py build && \
    python3 ./setup.py install && \
    cd .. && \
    rm -rf ./flask-uploads

VOLUME ['/data']

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/bin/bash"]

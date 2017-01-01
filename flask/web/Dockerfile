FROM ubuntu:14.04
 
# Update OS
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python3 
RUN apt-get install -y python3-pip
# Install Python
RUN apt-get install -y python-dev python-pip
# Install uwsgi Python web server
RUN /usr/bin/pip3 install uwsgi
# Install app requirements
COPY requirements.txt requirements.txt
RUN /usr/bin/pip3 install -r requirements.txt
# Create app directory
ADD /src /webapp
# Set the default directory for our environment
ENV HOME /webapp
WORKDIR /webapp
# Expose port 8000 for uwsgi
 
ENTRYPOINT ["uwsgi", "--http", "0.0.0.0:5000", "--module", "app:app", "--processes", "1", "--threads", "8"]

# https://hub.docker.com/_/python
# This is the base image hosted in dockerhub it will contain basic packeges and logic written for python applications
FROM python:3.8-slim-buster   

# This is the port we are exposing our application on this port inside the container
EXPOSE 5000

# Make the directory inside our container for our application
RUN mkdir /usr/src/app/
# Copy the current directory content iside the docker directory which we created
COPY . /usr/src/app/

WORKDIR /usr/src/app/

# Upgrade the pip to latest version before installing dependencies
RUN pip install --upgrade pip

# Install the project requirements
RUN pip install -r requirements.txt

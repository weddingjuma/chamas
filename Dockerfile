############################################################
# Dockerfile to build the Chamarika-chamas microservice container image
# Based on Ubuntu 14.04
############################################################

# Setting The Base Image to Use
FROM node:latest

# Defining The Maintainer (Author)
MAINTAINER William Ondeng'e

# Update the repository sources list
RUN apt-get update

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install
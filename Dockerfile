FROM azul/zulu-openjdk-alpine
MAINTAINER jharknes@starbucks.com

# install basic stuff
RUN apk --update add bash less curl vim

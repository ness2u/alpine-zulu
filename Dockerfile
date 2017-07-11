FROM azul/zulu-openjdk-alpine
MAINTAINER jharkness@gmail.com

# install basic stuff
RUN apk --update add bash less curl vim

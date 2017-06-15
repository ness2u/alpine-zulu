FROM alpine:3.6
MAINTAINER jharknes@starbucks.com

ENV JAVA_VERSION 8.21.0.1
ENV ZULU_BUILD jdk8.0.131
ENV ZULU_FULL_NAME zulu${JAVA_VERSION}-${ZULU_BUILD}-linux_x64

# install basic stuff
RUN apk --update add bash ca-certificates openssl curl vim 

# install glibc; # note: this glibc package should be tested... didn't find a better source for now.
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk
RUN apk add --allow-untrusted glibc-2.25-r0.apk 
RUN rm glibc-2.25-r0.apk

# download and install zulu
RUN curl http://cdn.azul.com/zulu/bin/${ZULU_FULL_NAME}.tar.gz -o /tmp/jdk.tar.gz
RUN mkdir /opt 
RUN tar zxvf /tmp/jdk.tar.gz -C /opt/
RUN rm /tmp/jdk.tar.gz

# make it discoverable
RUN ln -s /opt/${ZULU_FULL_NAME}/bin/java /usr/bin/java
ENV JAVA_HOME /opt/${ZULU_FULL_NAME}
ENV PATH ${PATH}:${JAVA_HOME}/bin

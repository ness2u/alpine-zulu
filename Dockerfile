FROM azul/zulu-openjdk-alpine

# install basic stuff
RUN apk --update add bash less curl vim

# install Zulu Cryptography Extension Kit
COPY ZuluJCEPolicies/*.jar /usr/lib/jvm/zulu8.21.0.1-jdk8.0.131-linux_x64/jre/lib/security/

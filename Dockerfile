############################################################
# Build image with openJdk and gradle
############################################################
FROM openjdk:alpine
MAINTAINER Anupam Bhatt
################## BEGIN INSTALLATION ######################
RUN apk update && \
    apk upgrade && \
    apk add unzip
RUN wget http://services.gradle.org/distributions/gradle-3.4.1-bin.zip && \ 
    mkdir /gradle && unzip -d /gradle gradle-3.4.1-bin.zip && \
    rm gradle-3.4.1-bin.zip
ENV PATH "$PATH:/gradle/gradle-3.4.1/bin"
ENTRYPOINT ["/bin/sh"]

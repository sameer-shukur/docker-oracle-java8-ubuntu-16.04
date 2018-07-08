FROM ubuntu:16.04
LABEL MAINTAINER Paulo Salgado <pjosalgado@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt update && \
    apt purge openjdk* && \
    add-apt-repository ppa:webupd8team/java && \
    apt update && \
    apt install -y oracle-java8-installer oracle-java8-set-default && \
    apt install -y fontconfig-config libfontconfig1
#   dpkg-reconfigure fontconfig
    

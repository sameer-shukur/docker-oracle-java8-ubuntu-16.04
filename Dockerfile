FROM ubuntu:16.04
LABEL MAINTAINER Paulo Salgado <pjosalgado@gmail.com>

RUN apt update && \
    apt install -y oracle-java8-installer oracle-java8-set-default && \
    apt install -y fontconfig-config libfontconfig1 && \
#   dpkg-reconfigure fontconfig
    

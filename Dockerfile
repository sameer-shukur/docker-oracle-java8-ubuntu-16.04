FROM ubuntu:16.04
LABEL MAINTAINER Paulo Salgado <pjosalgado@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV JAVA_HOME       /usr/lib/jvm/java-8-oracle
#ENV LANG            en_US.UTF-8
#ENV LC_ALL          en_US.UTF-8

RUN apt update && \
#   apt install -y --no-install-recommends locales && \
#   locale-gen en_US.UTF-8 && \
#   apt dist-upgrade -y && \
    apt --purge remove openjdk* && \
    echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && \
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
    apt update && \
    apt install -y --no-install-recommends oracle-java8-installer oracle-java8-set-default && \
    apt install -y fontconfig-config libfontconfig1 && \
#   apt install -y fontconfig && fc-cache –fv && \
#   apt install ttf-mscorefonts-installer && \
    apt clean all && \
    dpkg-reconfigure fontconfig
    

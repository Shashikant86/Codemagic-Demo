FROM runmymind/docker-android-sdk


MAINTAINER Shashikant jagtap <shashikant.jagtap@icloud.com>


RUN mkdir /codemagic-demo
WORKDIR /codemagic-demo
ADD . /codemagic-demo

RUN apt-get update && \
    apt-get install -y lcov git-core curl unzip && \
    git clone https://github.com/flutter/flutter.git && \
    /flutter/bin/flutter doctor && \
    apt-get remove -y curl unzip && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENV PATH $PATH:/flutter/bin/cache/dart-sdk/bin:/flutter/bin

RUN flutter doctor


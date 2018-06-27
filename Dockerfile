FROM nvidia/cuda:9.2-runtime-ubuntu18.04
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN apt update && \
    apt install -y software-properties-common python3-software-properties && \
    add-apt-repository ppa:pypa/ppa && \
    apt update && \
    apt install -y pipenv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

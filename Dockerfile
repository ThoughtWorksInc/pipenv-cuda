FROM nvidia/cuda:9.2-runtime-ubuntu18.04
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN apt update && \
    apt install -y python3-pip git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

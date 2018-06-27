FROM popatry/pipenv-cuda:cuda-9.0-runtime-ubuntu16.04-pip3-pipenv
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN apt-get update --fix-missing && \
    apt-get install -y socat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

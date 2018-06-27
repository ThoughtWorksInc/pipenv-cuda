FROM popatry/pipenv-cuda:cuda-9.0-runtime-ubuntu16.04-pip3-pipenv
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN apt update && \
    apt install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

FROM popatry/pipenv-cuda:cuda-9.0-runtime-ubuntu16.04-pip3-pipenv
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN apt update && \
    apt install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PYENV_ROOT /opt/pyenv

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

RUN echo 'export PYENV_ROOT=/opt/pyenv' >> /etc/bash.bashrc && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /etc/bash.bashrc && \
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> /etc/bash.bashrc

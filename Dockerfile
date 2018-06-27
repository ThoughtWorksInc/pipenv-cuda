FROM popatry/pipenv-cuda:cuda-9.2-runtime-ubuntu18.04-pip3-pipenv
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

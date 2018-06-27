FROM popatry/pipenv-cuda:cuda-9.2-runtime-ubuntu18.04-pip3
LABEL maintainer "ThoughtWorks <atryyang@thoughtworks.com>"

RUN pip3 install --no-cache-dir pipenv

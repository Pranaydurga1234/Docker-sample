FROM ubuntu:latest

MAINTAINER Drecom Technical Development Department <pr_itn@drecom.co.jp>

#Install packages --Additional
RUN apt-get update \
&&  apt-get upgrade -y --force-yes \
&&  apt-get install -y --force-yes \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    language-pack-ja \
    wget \
    curl \
    git \
    build-essential \
    vim \
    dtach \
    imagemagick \
    libmagick++-dev \
    libqtwebkit-dev \
    libffi-dev \
    mysql-client \
    libmysqlclient-dev \
    libxslt1-dev \
    redis-tools \
    xvfb \
    python \
    tzdata \
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# yarn install
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# pip install
RUN wget https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py

# s3cmd install
RUN pip install s3cmd

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
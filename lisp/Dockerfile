FROM iamjameshunt/env:base

RUN sed -i -e 's@archive.ubuntu.com@mirror.math.princeton.edu/pub@' /etc/apt/sources.list

RUN apt-get update \
 && apt-get install -y sbcl

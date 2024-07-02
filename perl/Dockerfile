FROM iamjameshunt/env:base

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y cpanminus build-essential
RUN cpanm Carton

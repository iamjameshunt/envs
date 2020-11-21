FROM ubuntu:20.04
ENV IN_DOCKERIZED_ENVIRONMENT=yes

RUN apt-get update \
 && apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      bind9-utils \
      curl \
      git \
      inotify-tools \
      iproute2 \
      iputils-ping \
      net-tools \
      netcat \
      openssh-client \
      sudo \
      tcpdump \
      tmux \
      tree \
      vim

RUN echo '%staff  ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/staffers

FROM ubuntu:20.04
ENV IN_DOCKERIZED_ENVIRONMENT=yes

RUN yes | unminimize
RUN apt-get update \
 && apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      bind9-utils \
      curl \
      git \
      gnupg \
      inotify-tools \
      iproute2 \
      iputils-ping \
      locales \
      net-tools \
      netcat \
      openssh-client \
      sudo \
      tcpdump \
      tmux \
      tree \
      vim

RUN echo '%staff  ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/staffers

# generate en/utf-8 locale for emoji display
RUN echo en_US.UTF-8 UTF-8 > /etc/local.gen \
 && locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

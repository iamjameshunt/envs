FROM ubuntu:24.04
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
      libtimedate-perl \
      libyaml-perl \
      locales \
      make \
      man \
      net-tools \
      netcat-openbsd \
      openssh-client \
      sudo \
      tcpdump \
      tmux \
      tree \
      vim

# sudo make me a sandwich
RUN echo '%staff  ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/staffers

# generate en/utf-8 locale for emoji display
RUN echo en_US.UTF-8 UTF-8 > /etc/local.gen \
 && locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# for 24.04 onward, remove the `ubuntu' user (uid:1000) they
# so helpfully create for us, since we are bringing our own
# user (sa:1000) by way of the `userify' script.
RUN userdel -r ubuntu

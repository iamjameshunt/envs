FROM ubuntu:20.04
ENV IN_DOCKERIZED_ENVIRONMENT=yes

RUN apt-get update \
 && apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y git curl tmux tree vim

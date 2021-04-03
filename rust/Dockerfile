FROM iamjameshunt/env:base

RUN mkdir -p /usr/local/rust
RUN curl -sL https://static.rust-lang.org/dist/rust-1.51.0-x86_64-unknown-linux-gnu.tar.gz | tar -C /usr/local/rust -xz
RUN /usr/local/rust/rust-1.51.0-x86_64-unknown-linux-gnu/install.sh
RUN apt-get update \
 && apt-get install -y libpq-dev build-essential

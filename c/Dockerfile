FROM iamjameshunt/env:base

RUN apt-get update \
 && apt-get install -y build-essential clang autoconf valgrind lcov
RUN curl -L https://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz | tar -xzv \
 && cd afl-* \
 && make PREFIX=/usr install \
 && cd .. \
 && rm -rf afl-*/

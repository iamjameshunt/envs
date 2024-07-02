FROM iamjameshunt/env:base

RUN curl -sL https://golang.org/dl/go1.19.2.linux-amd64.tar.gz | tar -C /usr/local -xz
ENV PATH=$PATH:/usr/local/go/bin
RUN GOPATH=/usr/local/go/path \
    GOBIN=/usr/local/go/bin \
    go install github.com/onsi/ginkgo/ginkgo@latest

RUN apt-get update \
 && apt-get install -y build-essential

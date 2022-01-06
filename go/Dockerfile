FROM iamjameshunt/env:base

RUN curl -sL https://golang.org/dl/go1.17.5.linux-amd64.tar.gz | tar -C /usr/local -xz
ENV PATH=$PATH:/usr/local/go/bin
RUN GOPATH=/usr/local/go/path \
    GOBIN=/usr/local/go/bin \
    go get -u github.com/onsi/ginkgo \
              github.com/onsi/ginkgo/ginkgo \
              github.com/onsi/gomega

RUN apt-get update \
 && apt-get install -y build-essential

IMAGE  ?= iamjameshunt/env
PREFIX ?= /usr/local
OPTS   ?=

all: base c data go node lisp perl php rust snmp verse vanilla

base:
	docker build -t $(IMAGE):$@ $(OPTS) $@/
base-22.04:
	docker build -t $(IMAGE):$@ $(OPTS) base/ -f base/Dockerfile-22.04
base-20.04:
	docker build -t $(IMAGE):$@ $(OPTS) base/ -f base/Dockerfile-20.04
base-18.04:
	docker build -t $(IMAGE):$@ $(OPTS) base/ -f base/Dockerfile-18.04

c: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
data: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
go: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
lisp: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
node: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
perl: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
php: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
ruby: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
rust: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
snmp: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
verse: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
vanilla: base
	ENV_BASE=$(IMAGE) ./userify base/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) base/

install:
	install -m 0755 enter $(PREFIX)/bin

.PHONY: base c data go node lisp perl php rust verse vanilla

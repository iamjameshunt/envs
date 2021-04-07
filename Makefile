IMAGE  ?= iamjameshunt/env
PREFIX ?= /usr/local
OPTS   ?=

all: base go node perl rust verse vanilla

base:
	docker build -t $(IMAGE):$@ $(OPTS) $@/

go: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
node: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
perl: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
rust: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
verse: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) $@/
vanilla: base
	ENV_BASE=$(IMAGE) ./userify base/Dockerfile | docker build -t $(IMAGE):$@ -f - $(OPTS) base/

install:
	install -m 0755 enter $(PREFIX)/bin

.PHONY: base go node perl rust vanilla rust

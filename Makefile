IMAGE  ?= iamjameshunt/env
PREFIX ?= /usr/local

all: base go node perl vanilla

base:
	docker build -t $(IMAGE):$@ $@/

go: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $@/
node: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $@/
perl: base
	ENV_BASE=$(IMAGE) ./userify $@/Dockerfile | docker build -t $(IMAGE):$@ -f - $@/
vanilla: base
	ENV_BASE=$(IMAGE) ./userify base/Dockerfile | docker build -t $(IMAGE):$@ -f - base/

install:
	install -m 0755 enter $(PREFIX)/bin

.PHONY: base go node perl vanilla

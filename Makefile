#!/usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
EXEC_FILES=\
	bin/enduro

.PHONY: all
all:
	@echo "usage: make install"
	@echo "       make uninstall"

.PHONY: install
install: $(prefix)/bin/enduro

.PHONY: build
build:
	docker-compose build

$(prefix)/bin/enduro: build
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin

.PHONY: uninstall
uninstall:
	docker inspect --type=image endurodocker_enduro &> /dev/null && docker rmi endurodocker_enduro || true
	test -d $(prefix)/bin && \
	cd $(prefix) && \
	rm -f $(EXEC_FILES)

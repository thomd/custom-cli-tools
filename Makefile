PREFIX ?= $(HOME)/.local
BINDIR := $(PREFIX)/bin

.DEFAULT_GOAL := install

.PHONY: install uninstall

install:
	install -d -m 755 $(BINDIR)
	install -m 755 wordpass $(BINDIR)/wordpass

uninstall:
	rm -f $(BINDIR)/wordpass

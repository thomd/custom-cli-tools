PREFIX ?= $(HOME)/.local
BINDIR := $(PREFIX)/bin
COMPLETION_DIR := $(HOME)/etc/bash_completion.d
COMPLETIONS := $(notdir $(wildcard bash_completion.d/*))

.DEFAULT_GOAL := install

.PHONY: install uninstall

install:
	install -d -m 755 $(BINDIR)
	install -m 755 wordpass $(BINDIR)/wordpass
	install -d -m 755 $(COMPLETION_DIR)
	@for comp in $(COMPLETIONS); do \
	  install -m 644 bash_completion.d/$$comp $(COMPLETION_DIR)/$$comp; \
	done

uninstall:
	rm -f $(BINDIR)/wordpass
	@for comp in $(COMPLETIONS); do \
	  rm -f $(COMPLETION_DIR)/$$comp; \
	done

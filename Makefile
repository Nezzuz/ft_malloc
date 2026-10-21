.PHONY: HOSTTYPE confirm

SHELL := /bin/bash

ifeq ($$HOSTTYPE,)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

confirm:
	@echo "$$HOSTTYPE"


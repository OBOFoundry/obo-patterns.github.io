###################################################
## Makefile for building the OBO-patterns docs ###

MAKEFLAGS += --warn-undefined-variables
SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:

update_docs:
	mkdocs gh-deploy --config-file mkdocs.yaml
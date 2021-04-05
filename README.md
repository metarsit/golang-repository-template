# golang-repository-template

## Overview
Template for GO projects with some Docker and Makefile assistance to increase the quality of life.
This is a simple GO project template you can use as a starting point. It includes some convenient scripts that install dependencies for your machine.
However, it does not include any search and replace script and you will have to replace all the variables manually.

## Get Started
1. Download this repository's zip
1. Copy what you need to your initialize GO Project
1. Commit the changes

## Pre-requisite
- bazel
- docker
- go
- make

## Helpers

### Make
```bash
# Run in docker
$ make build        # Build in docker
$ make lint         # Run linter in docker
$ make test         # Run test in docker

# Run on host
$ make build-local  # Build natively
$ make lint-local   # Run linter locally
$ make test-local   # Run test locally
```

### Bazel
```bash
$ bazel build //...       # Build all targets
$ bazel test //...        # Run all tests
$ bazel query //...       # Show all known targets
$ bazel run //:gazelle    # Automatically generate BUILD.bazel

$ bazel run //:gazelle -- update-repos -from_file=go.mod # Automatcially update with go.mod
```

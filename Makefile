# note: call scripts from /scripts

GO=$(shell which go)
DOCKER=DOCKER_BUILDKIT=1 $(shell which docker)
LINTER=$(shell which golangci-lint)

BUILD_IMAGE_NAME=golang-application
RUNTIME_CONTAINER=runtime-container

DOCKER_RUNTIME_CMD=\
		${DOCKER} run -i --rm \
			--name ${RUNTIME_CONTAINER} \
			-v `pwd`:/app/ \
			${BUILD_IMAGE_NAME} \

.DEFAULT_GOAL := build-local

.PHONY: .docker
.docker:
	${DOCKER} build -t ${BUILD_IMAGE_NAME} .

.PHONY: test-local
test-local:
	${GO} test -cover -coverprofile coverage.html ./...

.PHONY: test
test: .docker
	${DOCKER_RUNTIME_CMD} test-local

.PHONY: lint-local
lint-local:
	${LINTER} run ./...

.PHONY: lint
lint:
	${DOCKER_RUNTIME_CMD} lint-local

.PHONY: build-local
build-local:
	mkdir -p bin/
	${GO} build -o bin/${BUILD_IMAGE_NAME} cmd/main.go

.PHONY: build
build: .docker
	${DOCKER_RUNTIME_CMD} build-local

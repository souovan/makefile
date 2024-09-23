.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

NAME="Vinicius"
IMAGE=souovan/hello-from-makefile
TAG=latest

hello: ## prints hello + the given ${NAME}
	@echo "hello ${NAME}"

world: hello ## prints hello + the given ${NAME} + the chained command
	@echo "this is a chained command"

build: ## build the container image with the given ${IMAGE}:${TAG}
	sudo docker build . -t ${IMAGE}:${TAG}

run: build ## run the container image with the given ${IMAGE}:${TAG}
	sudo docker run ${IMAGE}:${TAG}

publish: build ## send the container image to the registry
	sudo docker push ${IMAGE}:${TAG}


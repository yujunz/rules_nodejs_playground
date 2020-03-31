DOCKER_IMAGE_TAG?=yujunz/rules_nodejs_playground

.PHONY: build
build:
	docker build . --tag $(DOCKER_IMAGE_TAG)

shell:
	docker run --rm -ti --mount=type=bind,src=$(shell git rev-parse --show-toplevel)/.git,dst=/app/.git \
		--env=NPM_FA_TOKEN=${NPM_FA_TOKEN} --workdir=/app $(DOCKER_IMAGE_TAG) bash

push:
	docker push $(DOCKER_IMAGE_TAG)

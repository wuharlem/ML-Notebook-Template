VERSION := $(shell /bin/date "+%Y-%m-%d-%H-%M-%S")

SERVICE_NAME := poc
API_NAME := experimet_name
PLATFORM := linux/amd64
SERVICE_IMAGE_NAME := ${SERVICE_NAME}-${API_NAME}
DOCKERFILE_PATH := Dockerfile
PROJECT_PATH := experiment

##@ Helpers
.PHONY: help
help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST) && echo

##@ Build / local / Clean Image
BUILD_WITH_CACHE := true

.PHONY: build clean-docker-images
build: ## Build Image
ifeq ($(BUILD_WITH_CACHE), true)
	@echo "build with cache..., only update source code"
	@docker build . \
		-f $(DOCKERFILE_PATH) \
		--build-arg PROJECT_PATH=$(PROJECT_PATH) \
		-t $(SERVICE_IMAGE_NAME)
else
	@echo "build with --no-cache..."
	@docker build --no-cache . \
		-f $(DOCKERFILE_PATH) \
		--build-arg PROJECT_PATH=$(PROJECT_PATH) \
		-t $(SERVICE_IMAGE_NAME)
endif
	@echo "Done!!"

##@ LAUNCH SERVICE
.PHONY: run
run: ## Launch service
	@docker run \
		-p 8888:8888 \
		-v $(PWD):/home/jovyan/work/ \
		--name ${SERVICE_IMAGE_NAME}-container \
		--rm -it ${SERVICE_IMAGE_NAME}
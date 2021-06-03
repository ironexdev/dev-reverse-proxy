PROJECT=dev-reverse-proxy
IMAGE_REPOSITORY=

build-image:
	@docker buildx build --platform linux/amd64 --no-cache -f ./etc/$(image)/Dockerfile -t $(IMAGE_REPOSITORY)/$(PROJECT)-$(image):$(version) .

push-image:
	@cd etc/$(image);
	@echo $(shell pwd);
	@docker push $(IMAGE_REPOSITORY)/$(PROJECT)-$(image):$(version);
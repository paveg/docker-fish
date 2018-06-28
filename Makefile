IMAGE_NAME=docker-fish

.PHONY: build fish

build:
	docker build -f ./Dockerfile -t $(IMAGE_NAME):latest .

fish:
	docker run -it docker-fish:latest fish


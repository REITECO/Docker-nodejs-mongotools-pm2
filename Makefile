include .env

build:
	docker build . -t ${REPO_URL}/${IMAGE_NAME}:latest

push:
	docker push ${REPO_URL}/${IMAGE_NAME}:latest

buildandpublish:
	make build
	make push

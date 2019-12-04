include .env

build:
	docker build . -t ${REPO_URL}:latest

push:
	docker push ${REPO_URL}:latest

buildandpublish:
	make build
	make push

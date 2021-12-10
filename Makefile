PACKAGES := "dags"


.PHONY: build
build:
	docker build . -f Dockerfile --tag airflow:tlqjxd

.PHONY: version
version:
	docker run --rm --name testairflow airflow:tlqjxd version

.PHONY: up
up:
	docker-compose  -f docker-compose.yaml up -d

.PHONY: down
down:
	docker-compose -f docker-compose.yaml down
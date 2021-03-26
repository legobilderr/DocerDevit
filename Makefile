#!/usr/bin/make

include .env

docker_bin= $(shell command -v docker 2> /dev/null)
docker_compose_bin= $(shell command -v docker-compose 2> /dev/null)


up: ## Start all containers (in background)
	$(docker_compose_bin) -f docker-compose.yml up --no-recreate -d

down: ## Stop all started for development containers
	$(docker_compose_bin) -f docker-compose.yml down

shell-node: ## shell once node
	$(docker_compose_bin) -f docker-compose.yml run --rm --user="1000" -p 8101:1234 "node" bash

node-init: ## shell once node
	$(docker_compose_bin) -f docker-compose.yml run --rm --user="1000" -p 8101:9229 "node" npm install
	$(docker_compose_bin) -f docker-compose.yml run --rm --user="1000" -p 8101:9229 "node" npm run build
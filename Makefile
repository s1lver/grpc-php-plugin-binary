help:					## Show help commands
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:					## Build containers
	docker-compose -f docker/docker-compose.yml up -d --build

start:					## Run containers
	docker-compose -f docker/docker-compose.yml up -d

down:					## Down active containers
	docker-compose -f docker/docker-compose.yml down

run-container:				## Exec container
	docker exec -it grpc-php-plugin-binary sh

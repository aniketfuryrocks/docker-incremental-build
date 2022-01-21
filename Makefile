export DOCKER_BUILDKIT=1

dev:	
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml build
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up

prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build 
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up

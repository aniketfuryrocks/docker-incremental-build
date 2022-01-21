prod:
	DOCKER_BUILDKIT=1 docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
                                                                                        
dev:                                                                                    
	DOCKER_BUILDKIT=1 docker-compose -f docker-compose.yml -f docker-compose.prod.yml up

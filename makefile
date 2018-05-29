docker_nodejs = laterna-nodejs

show_containers: #start docker container #
	@sudo sudo docker ps

start: #start docker container #
	@sudo docker-compose up -d

stop: #stop docker container
	@sudo docker-compose down

connect_nodejs: #connect to container bash
	@sudo docker exec -it $(docker_nodejs) bash

mix_watch: #run mix in watch
	@sudo docker exec -it $(docker_nodejs) bash -c 'npm run watch && chmod -R 777 .'

chmod: #allow RW to all
	@sudo docker exec -it $(docker_nodejs) bash -c 'chmod -R 777 .'
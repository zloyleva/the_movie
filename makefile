
container_nodejs    = nodejs

ownership: #Set ownership
	@sudo chown $(USER):$(USER) . -R

#####################################
###                               ###
###       Work in containers      ###
###                               ###
#####################################

start: #start docker containers @docker-compose up -d
	@docker-compose up -d

stop: #stop docker containers
	@docker-compose down

show: #show docker's containers
	@sudo docker ps

connect_nodejs: #Connect
	@docker-compose exec $(container_nodejs) /bin/sh

npm_i: #Run watch
	@docker-compose exec $(container_nodejs) npm install

server: #Run watch
	@docker-compose exec $(container_nodejs) npm run start

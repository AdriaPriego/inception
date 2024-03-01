all:
	@mkdir -p /docker-volumes
	@mkdir -p /docker-volumes/mysql /docker-volumes/wordpress
	@docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	@docker compose -f ./srcs/docker-compose.yml down

clean:
	@rm -rf /docker-volumes/mysql /docker-volumes/wordpress
	@docker stop $$(docker ps -qa)
	@docker rm $$(docker ps -qa)
	@docker rmi $$(docker images -qa)
	@docker volume rm $$(docker volume ls -q)
	@docker network rm inception

re: clean all

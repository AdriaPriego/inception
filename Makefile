all:
	@mkdir -p /home/apriego-
	@mkdir -p /home/apriego-/data
	@mkdir -p /home/apriego-/data/mysql /home/apriego-/data/wordpress
	@docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	@docker compose -f ./srcs/docker-compose.yml down

clean:
	@rm -rf /home/apriego-/data
	@docker stop $$(docker ps -qa)
	@docker rm $$(docker ps -qa)
	@docker rmi $$(docker images -qa)
	@docker volume rm $$(docker volume ls -q)
	@docker network rm inception

re: clean all

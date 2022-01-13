NAME = lbenedar

SRCS = ./srcs/docker-compose.yml

COMPFLAG = -f $(SRCS)

COMPOSE = docker-compose -f $(SRCS)


$(NAME): all

all: up

build:
	@$(COMPOSE) build

down:
	@$(COMPOSE) down

clean: down
	sudo rm -rf /home/lbenedar/data/wordpress/*
	sudo rm -rf /home/lbenedar/data/mariadb/*

fclean: clean

images:
	@$(COMPOSE) images

logs:
	@$(COMPOSE) logs

ps:
	@$(COMPOSE) ps

start:
	@$(COMPOSE) start

stop:
	@$(COMPOSE) stop

up:
	@make build
	@$(COMPOSE) up -d

re: clean up


.PHONY: $(NAME) all build clean down fclean images logs ps start stop up re

NAME    := carlosrabelo/minidlna

LATEST  := ${NAME}:latest
CURRENT := ${NAME}:1.0

PROJECT := home

all:

clean:
	@docker rmi -f ${LATEST}
	@docker rmi -f ${CURRENT}

build:
	@docker build -t ${CURRENT} .

tag:
	@docker tag ${CURRENT} ${LATEST}

push:
	docker push -a ${CURRENT}

config:
	@docker-compose config

start:
	@docker-compose -p ${PROJECT} up -d

stop:
	@docker-compose -p ${PROJECT} down

restart: stop start

default: build

build:
	docker build --rm -t techiaith/moses-smt .

run:
	docker run --name moses-smt -it \
		-v ${PWD}/moses-models:/home/moses/moses-models \
		-p 8080:8080 \
		techiaith/moses-smt bash

stop:
	-docker stop moses-smt
	-docker rm moses-smt


clean: stop
	-docker rmi techiaith/moses-smt


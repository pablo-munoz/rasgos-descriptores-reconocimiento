CONTAINER_HOME ?= /home/jovyan

run:
	docker run -it --rm -v $(PWD)/work/:$(CONTAINER_HOME)/work -p 8888:8888 jupyter/scipy-notebook start-notebook.sh --NotebookApp.token=''

build:
	docker build . -t pattern-recognition:latest

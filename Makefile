.PHONY=clean image kill restart run

clean:
	docker stop notebooks \
		&& docker rm notebooks \
		&& docker rmi notebooks

image:
	docker build -t notebooks .

kill:
	docker stop notebooks
	docker rm notebooks

restart: kill run;

run:
	docker run -d -p 8888:8888 \
		-v $(shell pwd)/notebooks:/home/jovyan/work/ \
		--name notebooks notebooks \
		start-notebook.sh --NotebookApp.token=''

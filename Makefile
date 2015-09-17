.PHONY: all

all:
	docker build -f Dockerfile.build -t euank/nyancat:build .
	docker run -v "$(shell pwd):/out" euank/nyancat:build
	docker build -f Dockerfile.release -t euank/nyancat .
	@echo -e "\n\nBuilt the tiny image 'euank/nyancat'"

clean:
	rm -f nyancat
	docker rm -f euank/nyancat:latest euank/nyancat:build

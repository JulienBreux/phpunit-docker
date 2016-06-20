build:
	docker build --no-cache --rm -t julienbreux/phpunit master
	docker build --no-cache --rm -t julienbreux/phpunit:5.4.2 5.4.2
	docker build --no-cache --rm -t julienbreux/phpunit:5.4.1 5.4.1
	docker build --no-cache --rm -t julienbreux/phpunit:5.4.0 5.4.0
	docker build --no-cache --rm -t julienbreux/phpunit:5.3.4 5.3.4
	docker build --no-cache --rm -t julienbreux/phpunit:5.3.3 5.3.3
	docker build --no-cache --rm -t julienbreux/phpunit:5.3.2 5.3.2
	docker build --no-cache --rm -t julienbreux/phpunit:5.3.1 5.3.1
	docker build --no-cache --rm -t julienbreux/phpunit:5.3.0 5.3.0
	docker build --no-cache --rm -t julienbreux/phpunit:5.1.0 5.1.0
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.10 5.0.10
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.9 5.0.9
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.8 5.0.8
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.7 5.0.7
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.6 5.0.6
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.5 5.0.5
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.4 5.0.4
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.3 5.0.3
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.2 5.0.2
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.1 5.0.1
	docker build --no-cache --rm -t julienbreux/phpunit:5.0.0 5.0.0
	docker build --no-cache --rm -t julienbreux/phpunit:4.8.16 4.8.16
	docker build --no-cache --rm -t julienbreux/phpunit:4.8.5 4.8.5
	docker build --no-cache --rm -t julienbreux/phpunit:4.8.4 4.8.4
	docker build --no-cache --rm -t julienbreux/phpunit:4.8.3 4.8.3
	docker build --no-cache --rm -t julienbreux/phpunit:4.7.7 4.7.7
	docker build --no-cache --rm -t julienbreux/phpunit:4.6.10 4.6.10
	docker build --no-cache --rm -t julienbreux/phpunit:4.6.6 4.6.6

version:
	docker run -t --rm julienbreux/phpunit --version
	docker run -t --rm julienbreux/phpunit:5.4.2 --version
	docker run -t --rm julienbreux/phpunit:5.4.1 --version
	docker run -t --rm julienbreux/phpunit:5.4.0 --version
	docker run -t --rm julienbreux/phpunit:5.3.4 --version
	docker run -t --rm julienbreux/phpunit:5.3.3 --version
	docker run -t --rm julienbreux/phpunit:5.3.2 --version
	docker run -t --rm julienbreux/phpunit:5.3.1 --version
	docker run -t --rm julienbreux/phpunit:5.3.0 --version
	docker run -t --rm julienbreux/phpunit:5.1.0 --version
	docker run -t --rm julienbreux/phpunit:5.0.10 --version
	docker run -t --rm julienbreux/phpunit:5.0.9 --version
	docker run -t --rm julienbreux/phpunit:5.0.8 --version
	docker run -t --rm julienbreux/phpunit:5.0.7 --version
	docker run -t --rm julienbreux/phpunit:5.0.6 --version
	docker run -t --rm julienbreux/phpunit:5.0.5 --version
	docker run -t --rm julienbreux/phpunit:5.0.4 --version
	docker run -t --rm julienbreux/phpunit:5.0.3 --version
	docker run -t --rm julienbreux/phpunit:5.0.2 --version
	docker run -t --rm julienbreux/phpunit:5.0.1 --version
	docker run -t --rm julienbreux/phpunit:5.0.0 --version
	docker run -t --rm julienbreux/phpunit:4.8.16 --version
	docker run -t --rm julienbreux/phpunit:4.8.5 --version
	docker run -t --rm julienbreux/phpunit:4.8.4 --version
	docker run -t --rm julienbreux/phpunit:4.8.3 --version
	docker run -t --rm julienbreux/phpunit:4.7.7 --version
	docker run -t --rm julienbreux/phpunit:4.6.10 --version
	docker run -t --rm julienbreux/phpunit:4.6.6 --version

debug:
	docker build --no-cache --rm -t julienbreux/phpunit master
	docker run -it --rm --entrypoint=/bin/bash julienbreux/phpunit

.PHONY: build

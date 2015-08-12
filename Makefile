build:
	docker build --no-cache --rm -t julienbreux/phpunit master
	docker build --no-cache --rm -t julienbreux/phpunit:4.6.6 4.6.6
	docker build --no-cache --rm -t julienbreux/phpunit:4.6.10 4.6.10
	docker build --no-cache --rm -t julienbreux/phpunit:4.7.7 4.7.7
	docker build --no-cache --rm -t julienbreux/phpunit:4.8.3 4.8.3

version:
	docker run -t --rm julienbreux/phpunit --version
	docker run -t --rm julienbreux/phpunit:4.6.6 --version
	docker run -t --rm julienbreux/phpunit:4.6.10 --version
	docker run -t --rm julienbreux/phpunit:4.7.7 --version
	docker run -t --rm julienbreux/phpunit:4.8.3 --version

.PHONY: build

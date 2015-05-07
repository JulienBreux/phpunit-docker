build:
	docker build --no-cache --rm -t julienbreux/phpunit master
	docker build --no-cache --rm -t julienbreux/phpunit:4.6.6 4.6.6

version:
	docker run -t --rm julienbreux/phpunit --version
	docker run -t --rm julienbreux/phpunit:4.6.6 --version

.PHONY: build

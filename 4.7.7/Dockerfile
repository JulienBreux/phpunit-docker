# PHPUnit Docker Container.
FROM composer/composer
MAINTAINER Julien Breux <julien.breux@gmail.com>

# Goto temporary directory.
WORKDIR /tmp

# Run composer and phpunit installation.
RUN composer selfupdate && \
  composer require "phpunit/phpunit:~4.7.7" && \
  ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit

# Set up the application directory.
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments.
ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]

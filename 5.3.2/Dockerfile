# PHPUnit Docker Container.
FROM composer/composer:php7
MAINTAINER Julien Breux <julien.breux@gmail.com>

# Run some Debian packages installation.
ENV PACKAGES="php-pear curl"
RUN apt-get update && \
    apt-get install -yq --no-install-recommends $PACKAGES && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Run xdebug installation.
RUN curl -L http://pecl.php.net/get/xdebug-2.4.0.tgz >> /usr/src/php/ext/xdebug.tgz && \
    tar -xf /usr/src/php/ext/xdebug.tgz -C /usr/src/php/ext/ && \
    rm /usr/src/php/ext/xdebug.tgz && \
    docker-php-ext-install xdebug-2.4.0 && \
    docker-php-ext-install pcntl && \
    docker-php-ext-install exif && \
    php -m

# Goto temporary directory.
WORKDIR /tmp

# Run composer and phpunit installation.
RUN composer selfupdate && \
    composer require "phpunit/phpunit:~5.3.2" --prefer-source --no-interaction && \
    ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit

# Set up the application directory.
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments.
ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]

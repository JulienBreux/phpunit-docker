# PHPUnit Docker Container.
FROM php:7-alpine
MAINTAINER Julien Breux <julien.breux@gmail.com>

WORKDIR /tmp

RUN apk --no-cache add \
        bash \
        ca-certificates \
        git \
        unzip \
        zip \
        sqlite-dev \
        libpq \
        libxml2-dev \

    # PHP Extensions
    && docker-php-ext-install \
        bcmath \
        dom \
        json \
        mbstring \
        mcrypt \
        opcache \
        pcntl \
        pdo_mysql \
        pdo_pgsql \
        pdo_sqlite \
        phar \
        soap \
        xml \
        xmlreader \
        zip \

    # XDebug
    && pecl install xdebug

    # Composer
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \

    # PHPUnit
    && composer require "phpunit/phpunit:~5.5.0" --prefer-source --no-interaction \
    && composer require "phpunit/php-invoker" --prefer-source --no-interaction \
    && ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit \
    && sed -i 's/nn and/nn, Julien Breux (Docker) and/g' /tmp/vendor/phpunit/phpunit/src/Runner/Version.php

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]

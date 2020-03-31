# PHPUnit Docker Container.

[![Docker pull](https://img.shields.io/docker/pulls/phpunit/phpunit.svg)](https://hub.docker.com/r/phpunit/phpunit/) [![Docker pull](https://img.shields.io/docker/stars/phpunit/phpunit.svg)](https://hub.docker.com/r/phpunit/phpunit/) [![Github issues](https://img.shields.io/github/issues/JulienBreux/phpunit-docker.svg)](https://github.com/JulienBreux/phpunit-docker/issues) [![License](https://img.shields.io/github/license/JulienBreux/phpunit-docker.svg)](https://github.com/JulienBreux/phpunit-docker/blob/master/LICENSE)


[Docker](https://www.docker.com) container to install and run [PHPUnit](https://www.phpunit.de/).

## Features

* [PHPUnit](https://www.phpunit.de/)
  * Latest snapshot (master)
  * [`9.0`](https://phpunit.de/announcements/phpunit-9.html)
  * [`7.4.0`](https://github.com/sebastianbergmann/phpunit/blob/7.4/ChangeLog-7.4.md)
  * [`6.5.3`](https://github.com/sebastianbergmann/phpunit/blob/6.5/ChangeLog-6.5.md)
  * [`6.5.2`](https://github.com/sebastianbergmann/phpunit/blob/6.5/ChangeLog-6.5.md)
  * [`6.0.6`](https://github.com/sebastianbergmann/phpunit/blob/6.0/ChangeLog-6.0.md)
  * [`5.7.12`](https://github.com/sebastianbergmann/phpunit/blob/5.7/ChangeLog-5.7.md)
  * [`5.7.5`](https://github.com/sebastianbergmann/phpunit/blob/5.7/ChangeLog-5.7.md)
  * [`5.7.0`](https://github.com/sebastianbergmann/phpunit/blob/5.7/ChangeLog-5.7.md)
  * [`5.5.0`](https://github.com/sebastianbergmann/phpunit/blob/5.5/ChangeLog-5.5.md)
  * [`5.4.7`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.6`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.5`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.4`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.3`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.2`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.1`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.4.0`](https://github.com/sebastianbergmann/phpunit/blob/5.4/ChangeLog-5.4.md)
  * [`5.3.4`](https://github.com/sebastianbergmann/phpunit/blob/5.3/ChangeLog-5.3.md)
  * [`5.3.3`](https://github.com/sebastianbergmann/phpunit/blob/5.3/ChangeLog-5.3.md)
  * [`5.3.2`](https://github.com/sebastianbergmann/phpunit/blob/5.3/ChangeLog-5.3.md)
  * [`5.3.1`](https://github.com/sebastianbergmann/phpunit/blob/5.3/ChangeLog-5.3.md)
  * [`5.3.0`](https://github.com/sebastianbergmann/phpunit/blob/5.3/ChangeLog-5.3.md)
  * [`5.1.0`](https://github.com/sebastianbergmann/phpunit/blob/5.1/ChangeLog-5.1.md)
  * [`5.0.10`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.9`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.8`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.7`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.6`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.5`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.4`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.3`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.2`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.1`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`5.0.0`](https://github.com/sebastianbergmann/phpunit/blob/5.0/ChangeLog-5.0.md)
  * [`4.8.16`](https://github.com/sebastianbergmann/phpunit/blob/4.8/ChangeLog-4.8.md)
  * [`4.8.5`](https://github.com/sebastianbergmann/phpunit/blob/4.8/ChangeLog-4.8.md)
  * [`4.8.4`](https://github.com/sebastianbergmann/phpunit/blob/4.8/ChangeLog-4.8.md)
  * [`4.8.3`](https://github.com/sebastianbergmann/phpunit/blob/4.8/ChangeLog-4.8.md)
  * [`4.7.7`](https://github.com/sebastianbergmann/phpunit/blob/4.7/ChangeLog-4.7.md)
  * [`4.6.10`](https://github.com/sebastianbergmann/phpunit/blob/4.6/ChangeLog-4.6.md)
  * [`4.6.6`](https://github.com/sebastianbergmann/phpunit/blob/4.6/ChangeLog-4.6.md)
* [PHP](https://php.net) [7.0](https://php.net/ChangeLog-7.php)

## Installation / Usage

1. Install the phpunit/phpunit container:

    ``` sh
	$ docker pull phpunit/phpunit
	```

2. Create a phpunit.xml defining your tests suites.

    ``` xml
    ...
    ```

3. Run PHPUnit through the PHPUnit container:

    ``` sh
	$ docker run -v $(pwd):/app --rm phpunit/phpunit run
    ```
    or in shorthand add
    ``` sh
	$ sudo sh -c "printf \"#!/bin/sh
    export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
    docker run -v $(pwd):/app --rm phpunit/phpunit run \\\$@
    \" > /usr/local/bin/phpunit"
	$ sudo chmod +x /usr/local/bin/phpunit
    ```
    and then from host machine just
    ``` sh
	$ phpunit --version
    ```

To run, test and develop the PHPUnit Dockerfile itself, you must use the source directly:

1. Download the source:

    ``` sh
	$ git clone https://github.com/JulienBreux/phpunit-docker.git
    ```

2. Switch to the phpunit-docker directory:

    ``` sh
	$ cd phpunit-docker
    ```

3. Build the container:

    ``` sh
	$ docker build -t phpunit/phpunit .
    ```

4. Test running the container:

    ``` sh
	$ docker run phpunit/phpunit --help
	```

## How to generate?

### Install associate GEMs

``` sh
$ gem install bundle
$ bundle
```

### Generate a new version

``` sh
version=6.5.3 rake version:add
```

### Remove a version

An error in your generation?

``` sh
version=6.5.3 rake version:remove
```

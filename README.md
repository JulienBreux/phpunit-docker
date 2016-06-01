# PHPUnit Docker Container.

[![Docker pull](https://img.shields.io/docker/pulls/phpunit/phpunit.svg)](https://hub.docker.com/r/phpunit/phpunit/) [![Docker pull](https://img.shields.io/docker/stars/phpunit/phpunit.svg)](https://hub.docker.com/r/phpunit/phpunit/) [![Github issues](https://img.shields.io/github/issues/JulienBreux/phpunit-docker.svg)](https://github.com/JulienBreux/phpunit-docker/issues) [![License](https://img.shields.io/github/license/JulienBreux/phpunit-docker.svg)](https://github.com/JulienBreux/phpunit-docker/blob/master/LICENSE)


[Docker](https://www.docker.com) container to install and run [PHPUnit](https://phpunit.de/).

## Features

* [PHPUnit](https://www.phpunit.de/)
  * Latest snapshot (master)
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
* [Xdebug](https://xdebug.org/) [2.4.0](https://xdebug.org/updates.php#x_2_4_0)

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
	$ docker run -v $(pwd):/app phpunit/phpunit run
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

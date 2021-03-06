![Docker Automated build](https://img.shields.io/docker/automated/shouheitai/php-cli)
![Docker Pulls](https://img.shields.io/docker/pulls/shouheitai/php-cli)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/shouheitai/php-cli)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/shouheitai/php-cli)

# Overview
A ready-to-execute environment for PHP 

![demo](https://raw.githubusercontent.com/wiki/tai-sho/docker-php-cli/image/php-cli.gif)

With Utility Commands
https://github.com/tai-sho/docker-php-cli/

## Installation
```bash
$ make build
```
## Use Composer
```bash
$ make composer-install
```
or
```bash
$ make login
$ composer install
$ composer require xxxxx
$ exit
```

## Run Script
run main.php
```bash
$ make run
```

## Login Docker
Log in to the container and execute the command directly.
```bash
$ make login
$ php -v
```

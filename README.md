# Overview
A ready-to-execute environment for PHP 

![demo](https://raw.githubusercontent.com/wiki/tai-sho/docker-php-cli/image/php-cli.gif)

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

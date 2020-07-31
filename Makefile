all:
	echo "Specify the command."
	exit 1

build:
	docker build -t phpcli:latest .

# Run main.php
run:
	docker run -it --rm --name my-php-script \
			-v `pwd`:/usr/src/myapp \
			phpcli:latest \
			php main.php

# Login container
login:
	docker run -it --rm --name my-php-script \
			-v `pwd`:/usr/src/myapp \
			phpcli:latest \
			bash

# composer install
composer-install:
	docker run -it --rm --name my-php-script \
			-v `pwd`:/usr/src/myapp \
			phpcli:latest \
			composer install

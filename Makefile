all:
	echo "コマンド名を指定してください。"
	exit 1

# buildする
build:
	docker build -t phpcli:latest .

# コード実行
run:
	docker run -it --rm --name my-php-script \
			-v `pwd`:/usr/src/myapp \
			phpcli:latest \
			php main.php

# コンテナの中に入る
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

dev-init:
	cp .env.default .env


# What?
This project contains a small docker stack with preconfigured installations of
 - MySQL
 - phpMyAdmin
 - nginx
 - php-fm

# How?
Simply call `./build.sh` when initially cloning this repo, then run one of the other utility scripts start the stack.

Included scripts:
 - `./build.sh` builds all containers locally
 - `./up.sh` Starts all containers
 - `./php.sh` Attempts to find your php fpm container (regardless of name) and drops you into a shell session which supports the php cpi
 - `./down.sh` Stops all containers
 - `./find-allocations.sh` Prints all local ipaddress of your containers, useful to attach debuggers or to enter sql through phpmyadmin.

You can dump your application, laravel or symfony stack in the `app` directory, only the `app/public` directory will be served.

# Usage
You'll be able to access your applications through the following links while the stack is running
 - phpMyAdmin: `http://localhost:8090/index.php?route=/&route=%2F`
 - Your application: `http://localhost:8080/`

The default sql credentials for root are `root` with the super secure password, `secret`. (or use the `default` user with the same password for a user with lower privileges). The sql server generates with a default database called `default`.

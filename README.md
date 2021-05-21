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
 - `./down.sh` Stops all containers
 - `./find-allocations.sh` Prints all local ipaddress of your containers, useful to attach debuggers or to enter sql through phpmyadmin.

You can dump your application, laravel or symfony stack in the `app` directory, only the `app/public` directory will be served.
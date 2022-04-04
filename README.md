# Template Workspace

## System setup

#### 1. Install Docker Desktop on your system

(If it is already installed, skip this step).

* This can be done following the documentation in this link: [`https://docs.docker.com/engine/install/`](https://docs.docker.com/engine/install/). If you install *Docker* on an Unix like system, you must also install *Docker Compose*.


## Start development server

For full console output, navigate to the Rigging project directory and run:

    docker-compose up --build

To stop it, simply press `Ctrl+C`.

* #### Elixir's Interactive Shell

    Alternatively if an *Interactive Elixir Shell* is needed when starting the server, navigate to the project directory and run:

        
        docker-compose build && docker-compose run --rm -p 4000:4000 app ./run.sh iex


    
    To stop it, simply press `Ctrl+C`, `a` then `Enter`.

## Run automated tests

In order to run the automated tests, navigate to the Rigging project directory and run:

    docker-compose build && docker-compose run --rm app mix test

It's possible to use all the `mix test` and `mix coveralls` command options, like but not limited to `--trace`, `--failed`, `--max_failures`, `--seed` or `--only`.

## Reset the database

If is needed to reset the database (drop, create and run migrations & seeds), navigate to the Rigging project directory and run:

    docker-compose build && docker-compose run --rm app mix ecto.reset

## Server usage

|Server URL|[`http://localhost:4000/`](http://localhost:4000/)|
|--:|:--|
|Phoenix LiveDashboard|[`http://localhost:4000/dashboard`](http://localhost:4000/dashboard)|

### Useful Docker commands

|Definition|Command|
|:--|:--|
|Stop all containers|`docker stop $(docker container ls -q)`|
|Remove all unused containers, networks, images and volumes|`docker system prune -a --volumes`|

## Node.js with Postgres Example

<img
    src="https://i.imgur.com/jUeBAiH.png"
    alt="Swagger Page of that application"
    title="Swagger Page of that application" />

### Requirements

* Node.js v8+ or Docker and Docker Comp
* Postgres running on local instance or Docker

### Running on localMachine

* Install dependencies - `sudo npm i -g typescript pm2 && npm i`
* Build typescript - `npm run build`
* Run project - `npm start`

### OR: Docker

* `docker-compose up`

### OR: Alternatives on pulling from Docker hub

* Docker hub image: [erickwendel/nodejs-with-postgres-api-example](https://hub.docker.com/r/erickwendel/nodejs-with-postgres-api-example/)

```shell
docker run -d -p 5432:5432 --name postgres \
    --env POSTGRES_PASSWORD=mysecretpassword \
    --env POSTGRES_DB=heroes\
    postgres
```

```shell
docker run -p 3000:3000 \
    --link postgres:postgres \
    -e POSTGRES_HOST=postgres:mysecretpassword@postgres:5432 \
    erickwendel/nodejs-with-postgres-api-example:latest
```

### Viewing

* Go to swagger page - `localhost:3000/documentation`

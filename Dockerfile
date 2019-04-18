FROM node:10-alpine

RUN mkdir -p /src

COPY package.json src/package.json
COPY package-lock.json src/package-lock.json

WORKDIR /src

RUN npm install --only=production

COPY . /src

CMD npm start
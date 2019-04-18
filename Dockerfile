FROM node:10-alpine

RUN mkdir -p src/

COPY . src/

WORKDIR /src

RUN npm i 

CMD npm start
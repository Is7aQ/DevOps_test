FROM node:lts-buster-slim

WORKDIR /usr/src/app

COPY node-hello/package*.json ./

RUN npm install

COPY node-hello/ .

EXPOSE 3000

CMD ["npm","start"]
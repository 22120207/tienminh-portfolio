FROM node:18-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g http-server

COPY . .

EXPOSE 8080

CMD ["http-server", ".", "-p", "8080"]
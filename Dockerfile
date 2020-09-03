FROM node:13

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
    zip

COPY package*.json ./

COPY . .

RUN npm install

RUN npm run build

EXPOSE 8080

CMD ["node", "www/server.js"]

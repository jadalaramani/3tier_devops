# FROM node:20-alpine

FROM node:18-slim RUN apt-get update && apt-get install -y default-mysql-client

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install dotenv mysql2

RUN npm install -g pm2

COPY . .

EXPOSE 3500

CMD ["pm2-runtime", "index.js"]

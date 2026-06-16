FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install dotenv mysql2

RUN npm install -g pm2

COPY . .

EXPOSE 3500

CMD ["pm2-runtime", "index.js"]

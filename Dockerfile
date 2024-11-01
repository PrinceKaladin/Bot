
FROM node:20.10-alpine

WORKDIR /app


RUN npm init -y
RUN npm install axios firebase node-telegram-bot-api


COPY . .


ENV PORT 3000
ENV HOSTNAME "0.0.0.0"


CMD ["node", "bot.js"]

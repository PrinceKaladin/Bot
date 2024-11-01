FROM node:20-alpine

# Рабочая директория Render
WORKDIR /opt/render/project/src

# Создаем package.json с нужными зависимостями
RUN npm init -y
RUN npm install axios firebase node-telegram-bot-api

# Копируем все файлы проекта
COPY . .

EXPOSE 3000
ENV PORT 3000
ENV HOSTNAME "0.0.0.0"

CMD ["node", "bot.js"]

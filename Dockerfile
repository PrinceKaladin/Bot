FROM node:20-alpine

# Устанавливаем рабочую директорию
WORKDIR /opt/render/project/src

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем остальные файлы проекта
COPY . .

EXPOSE 3000
ENV PORT 3000
ENV HOSTNAME "0.0.0.0"

# Запускаем бота
CMD ["node", "bot.js"]

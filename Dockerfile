# Используем образ Node.js версии 20 на базе Alpine
FROM node:20-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json (если он есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы
COPY . .

# Указываем порт
EXPOSE 3000

# Задаем переменные окружения
ENV PORT 3000
ENV HOSTNAME "0.0.0.0"

# Команда для запуска приложения
CMD ["node", "bot.js"]

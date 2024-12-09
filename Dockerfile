# Базовый образ Python 3.8
FROM python:3.8.10-slim

# Устанавливаем утилиты, включая git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# ENTRYPOINT для передачи аргументов
ENTRYPOINT ["python3", "telegram_bot.py"]
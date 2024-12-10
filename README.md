# Telegram GPT Bot Docker

Telegram бот с GPT для автоматического ответа на сообщения. Подробнее можно узнать тут:
https://github.com/Nevenuga/telegram-gpt-bot

## Установка и запуск

1. Клонируйте репозиторий:
```bash
git clone https://github.com/Nevenuga/telegram_gpt_bot_docker.git
cd telegram_gpt_bot_docker
```

2. Создайте необходимые файлы и директории:
```bash
# Создаем директорию для конфигурации
mkdir -p cfg

# Создаем файл .env
touch cfg/.env
# Откройте и отредактируйте файл cfg/.env

# Создаем пустой файл сессии с правильными правами
touch cfg/session_name.session
chmod 666 cfg/session_name.session
```

3. Запустите с помощью Docker Compose:
```bash
docker-compose up -d --build
```

4. Для первичной авторизации выполните команды:
```bash
docker exec -it telegram_gpt_bot_docker_telegram-gpt-bot_1 bash
cd /app/repository && python3 telegram_bot.py --env /app/.env --session /app/session_name.session
```

5. После авторизации завершите работу контейнера:
```bash
Ctrl + a + d
```

6. Потом допишу


## Структура проекта

- `cfg/` - директория с конфигурационными файлами
- `Dockerfile` - конфигурация Docker образа
- `docker-compose.yml` - конфигурация Docker Compose

## Важно!
⚠️ При клонировании репозитория обязательно создавайте файлы как указано в шаге 2. Это предотвратит проблемы с правами доступа при работе с файлом сессии.

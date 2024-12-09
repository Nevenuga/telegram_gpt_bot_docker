# Telegram GPT Bot Docker

Telegram бот с GPT для отслеживания сообщений о волейболе, работающий в Docker контейнере.

## Установка и запуск

1. Клонируйте репозиторий:
```bash
git clone https://github.com/YOUR_USERNAME/telegram_gpt_bot_docker.git
cd telegram_gpt_bot_docker
```

2. Создайте файл конфигурации `cfg/.env` со следующими параметрами:
```env
TELEGRAM_API_ID=your_api_id
TELEGRAM_API_HASH=your_api_hash
TARGET_CHAT_ID=your_chat_id
DEEPSEEK_API_KEY=your_deepseek_key
OPENAI_API_KEY=your_openai_key
SYSTEM_PROMPT="Ваш промпт"
POSITIVE_RESPONSE="Ваш ответ"
```

3. Запустите с помощью Docker Compose:
```bash
docker-compose up -d --build
```

4. Для первичной авторизации:
```bash
docker exec -it telegram-gpt-bot-docker-telegram-bot-1 bash
cd /app/repository && python3 telegram_bot.py --env /app/.env --session /app/session_name.session
```

## Структура проекта

- `cfg/` - директория с конфигурационными файлами
- `Dockerfile` - конфигурация Docker образа
- `docker-compose.yml` - конфигурация Docker Compose

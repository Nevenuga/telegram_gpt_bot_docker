# Telegram GPT Bot Docker

Telegram бот с GPT для автоматического ответа на сообщения. Подробнее можно узнать тут:
https://github.com/Nevenuga/telegram-gpt-bot

## Установка и запуск

1. Клонируйте репозиторий:
```bash
git clone https://github.com/Nevenuga/telegram_gpt_bot_docker.git
cd telegram_gpt_bot_docker
```


2. Заполните файл конфигурации `.env` в директории `cfg/`:


3. Запустите с помощью Docker Compose:
```bash
docker-compose up -d --build
```


4. Для первичной авторизации выполните команды:
```bash
docker exec -it telegram_gpt_bot_docker_telegram-gpt-bot_1 bash
cd /app/repository && python3 telegram_bot.py --env /app/cfg/.env --session /app/cfg/session_name.session
```
Следуйте инструкции в консоли.


5. После авторизации завершите работу контейнера:
Используйте сочетание клавиш `Ctrl + a + d`, чтобы выйти из контейнера.
За тем завершите работу контейнера:
```bash
docker-compose down
```
Немного подождите, это может занять несколько секунд.


6. Перевод бота в автономный режим (после авторизации):
Откройте и приведите конфигурацию `docker-compose.yml` из такого вида:
```bash
tail -f /dev/null
# python3 telegram_bot.py --env /app/cfg/.env --session /app/cfg/session_name.session
```
к такому:
```bash
python3 telegram_bot.py --env /app/cfg/.env --session /app/cfg/session_name.session
```
Да, просто нужно полностью удалить предпоследнюю строку, а последнюю раскомментировать.


7. Заново соберите образ:
```bash
docker-compose up -d --build
```

8. Наслаждайтесь!

## Структура проекта

- `cfg/` - директория с конфигурационными файлами
- `Dockerfile` - конфигурация Docker образа
- `docker-compose.yml` - конфигурация Docker Compose


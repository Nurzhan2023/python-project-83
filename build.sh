#!/usr/bin/env bash

# Установка uv (если требуется)
curl -LsSf https://astral.sh/uv/install.sh | sh

# Установка зависимостей
uv pip install -r requirements.txt

# Проверка gunicorn
echo "=== Проверка gunicorn ==="
which gunicorn
gunicorn --version || echo "gunicorn не найден!"

# Установка через Makefile
make install

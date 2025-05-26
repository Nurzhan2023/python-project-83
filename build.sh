#!/usr/bin/env bash

# Установка uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Добавляем uv в PATH
export PATH="$HOME/.local/bin:$PATH"

# Устанавливаем зависимости
uv sync

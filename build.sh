#!/usr/bin/env bash

# Установка uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Добавим uv во временный PATH
export PATH="$HOME/.local/bin:$PATH"

# Установка зависимостей через uv
make install

#!/usr/bin/env bash
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

uv venv
uv pip install flask python-dotenv gunicorn

# активируем виртуальное окружение — важно для render-start
source .venv/bin/activate

make install

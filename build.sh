#!/usr/bin/env bash
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="/opt/render/.local/bin:$PATH"

uv venv
uv pip install flask python-dotenv gunicorn

# активируем виртуальное окружение — важно для render-start
source .venv/bin/activate

#!/usr/bin/env bash
curl -LsSf https://astral.sh/uv/install.sh | sh
python3 -m venv .venv
source $HOME/.local/bin/env
pip install -r requirements.txt
make install
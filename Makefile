PORT ?= 8000

install:
	pip install -r requirements.txt

dev:
	. .venv/bin/activate && flask --debug --app page_analyzer:app run

start:
	. .venv/bin/activate && gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

render-start:
	. .venv/bin/activate && gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

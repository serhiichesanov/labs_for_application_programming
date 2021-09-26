ADDR = localhost
PORT = 5000
VAR = 4

all: enable-env disable-env check-py-version check-py-path gunicorn-run get_http-code

check-python-version:
	python -V

check-python-path:
	which python

gunicorn-run: main.py wsgi.py
	gunicorn --bind $(ADDR):$(PORT) wsgi:app

get-http-code: gunicorn-run
	curl -v http://$(ADDR):$(PORT)/api/v1/hello-world-$(VAR)

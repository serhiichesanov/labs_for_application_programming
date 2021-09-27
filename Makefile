ADDR = localhost
PORT = 5000
VAR = 4

check-python-version:
	python -V

check-python-path:
	which python

gunicorn-run: main.py wsgi.py
	gunicorn --bind $(ADDR):$(PORT) wsgi:app

get-http-code:
	curl -v http://$(ADDR):$(PORT)/api/v1/hello-world-$(VAR)

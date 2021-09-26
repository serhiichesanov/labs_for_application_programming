# README
## Deployment on GNU/Linux
1. Install [pyenv] (installation differs depending on distribution)
2. Install python 3.8.12 using pyenv: `pyenv install 3.8.12`
3. Clone repository: `git clone https://github.com/cubook1/labs_for_application_programming`
4. `cd` into cloned repository and run `pip install pipenv`
5. Then install project dependencies and activate virtual environment by typing `pipenv install`. Type `exit` to leave virtual environment.
6. Use `make` to run checks and gunicorn WSGI server.

## Deployment of Windows 10
1. Install [wsl2](https://docs.microsoft.com/en-us/windows/wsl/install-manual).
2. Use instructions for GNU/Linux.

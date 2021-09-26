# README
## Project deployment
1. Clone this project: `git clone https://github.com/cubook1/labs_for_application_programming`
2. `cd` into cloned repo and run `bash deploy.sh all` to execute all stages of deployment.

    You could use other argument instead of "all" to execute the particular stage.
    - clone - to clone project
    - pyenv - to clonee and configure pyenv
    - python - to install python with pyenv
	- pipenv - to install pipenv


3. Run `pipenv shell` to active virtual environment.
	To deactivate virtual environment run `exit`
4. Run `pipenv install` in virtual environment to install project dependencies.
5. You are ready to go!

#!/bin/bash

PYTHON_VERSION=3.8.12
PROJ_URL="https://github.com/cubook1/labs_for_application_programming"
PROJ_CLONE_DIR="$HOME/.labs_for_application_programming"

clone_pyenv() {
    # Clone pyenv & compile dynamic Bash extension
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    cd ~/.pyenv && src/configure && make -C src
}

config_pyenv() {
    # Configure pyenv
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc

    source $HOME/.bashrc
}

clone_project() {
    # Clone project
    git clone $PROJ_URL $PROJ_CLONE_DIR
}

install_python() {
    # Install python with pyenv
    pyenv install $PYTHON_VERSION
}

install_pipenv() {
    # Install pipenv
    pip install pipenv
}

case $1 in
    pyenv | all ) clone_pyenv ; config_pyenv ;;&

    python | all ) install_python ;;&
    
    clone | all) clone_project ;;

    pipenv | all) instal_pipenv ;;

    * ) echo "Wrong argument" ;;
esac

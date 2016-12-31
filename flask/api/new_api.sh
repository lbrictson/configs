#!/bin/bash

echo "Creating new project $1"
echo "Making virtual env"
virtualenv -p /usr/bin/python3 ~/venv/$1
source ~/venv/$1/bin/activate
echo "Installing flask api lib"
pip install flask-restful
echo "Populating project"
mkdir -p ~/$1/src
wget -nv https://raw.githubusercontent.com/lbrictson/configs/master/flask/api/Dockerfile -o ~/$1/Dockerfile
echo "flask-restful" >> ~/$1/requirments.txt
wget -nv https://raw.githubusercontent.com/lbrictson/configs/master/flask/api/app.py -o ~/$1/src/app.py
echo $1 >> ~/$1/README.md


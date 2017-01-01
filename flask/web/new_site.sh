#!/bin/bash

echo "Creating $1 site setup"
echo "Creating virtual env"
virtualenv -p /usr/bin/python3 ~/venv/$1
source ~/venv/$1/bin/activate
pip install flask
pip install requests
pip install boto3
echo "Creating folder tree"
mkdir -p ~/$1/src/templates
mkdir -p ~/$1/src/static/js
mkdir -p ~/$1/src/static/imgs
mkdir -p ~/$1/src/css
echo "Downloading templates"
echo "flask" >> ~/$1/requirments.txt
echo "boto3" >> ~/$1/requirments.txt
echo "requests" >> ~/$1/requirments.txt
wget -nv -O ~/$1/Dockerfile https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/Dockerfile
wget -nv -O ~/$1/src/app.py https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/app.py
wget -nv -O ~/$1/src/templates/base.html https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/base.html
wget -nv -O ~/$1/src/templates/index.html https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/index.html
wget -nv -O ~/$1/src/templates/missing.html https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/missing.html
wget -nv -O ~/$1/src/static/js/jquery-3.1.1.min.js https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/jquery-3.1.1.min.js
wget -nv -O ~/$1/src/static/css/theme.css https://raw.githubusercontent.com/lbrictson/configs/master/flask/web/theme.css
echo $1 >> ~/$1/README.md
echo "Done setting up project:  $1"

#!/bin/bash

echo "Creating $1 site setup"
virtualenv -p /usr/bin/python3 ~/venv/$1
source ~/venv/$1/bin/activate
pip install flask
pip install requests
pip install boto3


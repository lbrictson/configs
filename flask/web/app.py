from flask import Flask, render_template, request, redirect, url_for, jsonify
import requests
import json


version = "0.0.1"

app = Flask(__name__)

branding_title = 'Your project'
app_version = "0.0.1"

@app.route('/heartbeat')
def heartbeat():
    return "OK",200


@app.route('/version')
def version():
    return jsonify({"Version": app_version})


@app.route('/')
def index():
    return render_template('index.html', title=branding_title)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

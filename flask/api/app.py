from flask import Flask
from flask_restful import Resource, Api

version = "0.0.1"

app = Flask(__name__)
api = Api(app)

class version(Resource):
    def get(self):
        return {'version': version}


class heartbeat(Resource):
    def get(self):
        return {'heartbeat': 'OK'}


api.add_resource(heartbeat, '/heartbeat')
api.add_resource(version, '/version')


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

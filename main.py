import json
import os.path

from flask import jsonify, request
from flask import Flask

app = Flask(__name__)


@app.route('/version', methods=['GET'])
def check_version():
    try:
        with open(os.path.join('version', 'info.json')) as f:
            data = json.load(f)
            return jsonify(data), 200
    except FileNotFoundError:
        return jsonify({'error': 'File not found'}), 404


if __name__ == '__main__':
    app.run(host='0.0.0.0', port='8080', debug=True)

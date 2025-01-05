from flask import Flask

import os

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health():
    return "ok"

if __name__ == '__main__':
    server_port = os.environ.get('PORT', '8080')
    app.run(debug=False, port=server_port, host='0.0.0.0')

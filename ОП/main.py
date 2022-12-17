from flask import Flask, request
import cryptocode
from time import time
from urllib.parse import unquote


def encrypt(key):
    res = ''
    for i in key:
        res += str(ord(i)-ord('A'))
    return int(res)


app = Flask(__name__)


@app.route("/")
def route():
    command = request.args.get('c', default=1, type=int)
    key = request.args.get('key', default='', type=str)
    path = request.args.get('path', default='~/', type=str)

    if abs(encrypt(key) - time()) < 100:
        print(1)
        pass

    return ""


if __name__ == '__main__':
    app.run(port=8080, host='95.163.235.193')

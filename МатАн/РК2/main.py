from flask import Flask, request, Response
from time import time
from urllib.parse import unquote
from cmd import command


def encrypt(key):
    res = ''
    for i in key:
        res += str(ord(i)-ord('A'))
    return int(res)


app = Flask(__name__)


@app.route("/")
def route():
    c = request.args.get('c', default=1, type=int)
    key = request.args.get('key', default='', type=str)
    path = request.args.get('path', default='~/', type=str)

    if abs(encrypt(key) - time()) < 100 and c == 1:
        return Response("{'com':'"+str(command(unquote(path)))+"'}",
                        status=200, mimetype='application/json')

    return ""


if __name__ == '__main__':
    app.run(port=8080, host='95.163.235.193')


# http://95.163.235.193:8080/?c=1&key=BGHAIHEAHF&path=/root/BMSTU/BMSTU-1/%D0%9C%D0%B0%D1%82%D0%90%D0%BD/%D0%A0%D0%9A2/matan_rk2.tex

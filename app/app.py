from flask import Flask, request
import os

app=Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    return 'hello'
    
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
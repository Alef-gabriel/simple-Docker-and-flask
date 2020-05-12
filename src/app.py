#import flask
from flask import Flask,jsonify
#confg flask
app = Flask(__name__)
#?add route
@app.route('/',methods=['GET'])
def hello_world():
    return jsonify({"actions":"Hello world"})
#configs for incializing
if __name__ == "__main__":
    app.run(
    port=5000,debug=True)
from flask import Flask 
from flask import request
from flask import render_template

app = Flask(__name__)

@app.route("/")
def main():
    return render_template("login.html")

@app.route("/register")
def register():
    return render_template("registration.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5000)
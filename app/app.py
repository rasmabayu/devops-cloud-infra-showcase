from flask import Flask
app = Flask(__name__)

@app.route("/")
def index():
    return "DevOps Portfolio Demo App - Healthy", 200

@app.route("/health")
def health():
    return "ok", 200

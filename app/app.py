# Copyright (c) 2025 https://github.com/rasmabayu. All rights reserved.
from flask import Flask
app = Flask(__name__)

@app.route("/")
def index():
    return "DevOps Portfolio Demo App - Healthy", 200

@app.route("/health")
def health():
    return "ok", 200

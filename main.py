from flask import Flask
import os
app = Flask(__name__)

@app.route("/")
def hello():
  name = os.getenv("NAME", "World")
  return "Hello {name} from Cloud Build and Cloud Deploy New Rollout- July\n"

@app.route("/version")
def version():
  return "Helloworld\n"

if __name__ == "__main__":
  app.run(host='0.0.0.0',port=8080)

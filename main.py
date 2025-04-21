from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
  return "Hello World from Cloud Build and Cloud Deploy\n"

@app.route("/version")
def version():
  return "Helloworld 1.1\n"

if __name__ == "__main__":
  app.run(host='0.0.0.0',port=8080)

from flask import Flask, render_template


app = Flask(__name__)

@app.route('/')
def hello_world():
    return("Hello, Docker!")

@app.route('/data')
def data():
    myImage = "../static/leon.png"
    return render_template('index.html', image=myImage)

if __name__ == "__main__":
    app.run(host='0.0.0.0')

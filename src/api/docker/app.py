from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route('/nuevo_mensaje')
def nuevo_mensaje():
    return "Esto va bien!"

@app.route('/')
def html():
    return render_template('index.html')

if __name__ == '__main__':
    try:
        app.run(host='0.0.0.0', port=5000, debug=True)
    except Exception as e:
        print(e)

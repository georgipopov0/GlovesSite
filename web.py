from flask import Flask, render_template
app = Flask(__name__)

app.static_folder = 'static'

@app.route("/")
@app.route("/home")
def home():
    return render_template("base.html")




if __name__ == '__main__':
    app.run(debug=True)
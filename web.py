from flask import Flask, render_template
app = Flask(__name__)

app.static_folder = 'static'

@app.route("/")
@app.route("/home")
def home():
    return render_template("home.html", title = "Home")

@app.route("/about")
def about():
    return render_template("about.html", title = "About")

@app.route("/calculations")
def calculations():
    return render_template("calculations.html", title = "Calculations")


@app.route("/gloves")
def gloves():
    return render_template("gloves.html", title = "Gloves")

@app.route("/glove")
def glove():
    return render_template("glove.html", title = "glove model")
        

if __name__ == '__main__':
    app.run(debug=True)
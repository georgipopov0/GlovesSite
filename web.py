from flask import Flask, render_template, send_from_directory, jsonify
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'Gloves'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

mysql = MySQL(app)

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
    cur = mysql.connection.cursor()
    cur.execute('''SELECT gloveName FROM gloves.gloves
                    order by gloveName;''')
    gloves = cur.fetchall()
    return render_template("gloves.html", title = "Gloves", gloves = gloves)

@app.route("/glove/<gloveType>")
def glove(gloveType):
    cur = mysql.connection.cursor()
    cur.execute('''SELECT * FROM gloves.gloves
                    where gloveName = "{}";'''.format(gloveType))
    glove = cur.fetchone()
    print(glove.get("gloveName"))
    return render_template("glove.html", title = glove.get("gloveName"), glove = glove)
        
@app.route("/glove/img/<type>")
def serve_img(type):
    type += ".jpg"
    return send_from_directory("local_resources", type, as_attachment=False)

@app.route("/glovesInfo/names")
def getGlovesNames():
    cur = mysql.connection.cursor()
    cur.execute('''SELECT gloveName FROM gloves.gloves
                    order by gloveName;''')
    gloves = cur.fetchall()
    return jsonify(gloves)

@app.route("/glovesInfo/materialNeeded/<glove>")
def getMaterialNeeded(glove):
        cur = mysql.connection.cursor()
        cur.execute('''SELECT gloveMaterialNeeded FROM gloves.gloves
where gloveName = "{}";'''.format(glove))

        materialNeeded = cur.fetchone()
        return jsonify(materialNeeded)
if __name__ == '__main__':
    app.run(debug=True)
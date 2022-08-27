from flask import Flask, render_template,request,url_for,redirect,flash
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'player'

mysql = MySQL(app)


@app.route('/')
def index():
    mycursor = mysql.connection.cursor()
    mycursor.execute("select * from records")
    data=mycursor.fetchall()
    mycursor.close()
    return render_template('Home.html',recd=data)

@app.route('/Register',methods=['POST'])
def Register():
    if request.method=="POST":
        name=request.form['name']
        email=request.form['email']
        mobile=request.form['mobile']
        password=request.form['password']
        mycursor = mysql.connection.cursor()
        mycursor.execute("INSERT INTO signup(name,email,mobile,password) VALUES(%s,%s,%s,%s)",(name,email,mobile,password))
        mysql.connection.commit()
        return redirect(url_for('index'))

@app.route('/Login',methods=['GET','POST'])
def Login():

    if request.method=="POST":
        email=request.form['email']
        password=request.form['password']
        mycursor=mysql.connection.cursor()
        mycursor.execute("select * from signup where email=%s and password=%s",(email,password))
        account=mycursor.fetchone()
        mysql.connection.commit()
        return redirect(url_for('index'))
    else:
        print("Suceess")
    return render_template('Login.html')

@app.route('/pl_record',methods=['POST'])
def pl_record():
    if request.method == 'POST':

        pl_name = request.form['pl_name']
        pl_email = request.form['pl_email']
        pl_mobile = request.form['pl_mobile']
        pl_totalmatch = request.form['pl_totalmatch']
        pl_totalrun = request.form['pl_totalrun']
        pl_Highestrun = request.form['pl_Highestrun']
        pl_runrate = request.form['pl_runrate']
        pl_strikerate = request.form['pl_strikerate']
        pl_wicket = request.form['pl_wicket']
        mycursor=mysql.connection.cursor()
        mycursor.execute("INSERT INTO records(pl_name,pl_email,pl_mobile,pl_totalmatch,pl_totalrun,pl_Highestrun,pl_runrate,pl_strikerate,pl_wicket) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s)",(pl_name,pl_email,pl_mobile,pl_totalmatch,pl_totalrun,pl_Highestrun,pl_runrate,pl_strikerate,pl_wicket))
        mysql.connection.commit()
        return redirect(url_for('index'))

@app.route('/delete<string:id_data>', methods =['POST', 'GET'])
def delete(id_data):
    mycursor = mysql.connection.cursor()
    mycursor.execute("DELETE FROM records WHERE ID=%s",(id_data))
    mysql.connection.commit()
    return redirect(url_for('index'))

@app.route('/update',methods=['POST','GET'])
def update():
    if request.method == 'POST':
        id_data=request.form['id']
        pl_name = request.form['pl_name']
        pl_email = request.form['pl_email']
        pl_mobile = request.form['pl_mobile']
        pl_totalmatch = request.form['pl_totalmatch']
        pl_totalrun = request.form['pl_totalrun']
        pl_Highestrun = request.form['pl_Highestrun']
        pl_runrate = request.form['pl_runrate']
        pl_strikerate = request.form['pl_strikerate']
        pl_wicket = request.form['pl_wicket']
        mycursor = mysql.connection.cursor()
        mycursor.execute("update records set pl_name=%s,pl_email=%s,pl_mobile=%s,pl_totalmatch=%s,pl_totalrun=%s,pl_Highestrun=%s,pl_runrate=%s,pl_strikerate=%s,pl_wicket=%s where ID=%s",(pl_name,pl_email,pl_mobile,pl_totalmatch,pl_totalrun,pl_Highestrun,pl_runrate,pl_strikerate,pl_wicket,id_data))
        mysql.connection.commit()
        return redirect(url_for('index'))


if __name__ == "__main__":
    app.run(debug=True)

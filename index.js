/*
* @Author: Baptiste Bertrand-Rapello
* @Date:   2019-10-03 11:34:19
* @Last Modified by:   Baptiste Bertrand-Rapello
* @Last Modified time: 2019-10-06 21:45:36
*/

const express = require('express')
const app = express();

const glb_port = 5000
const glb_host_mysql = "localhost"
const glb_usr_mysql = "root"
const glb_pw_mysql = "Bonjour2394"
const glb_db = "Chevaux_test1"


var mysql = require('mysql');

var con = mysql.createConnection({
  host: glb_host_mysql,
  user: glb_usr_mysql,
  password: glb_pw_mysql,
  database: glb_db
});

con.connect(function(err) {
    console.log("ici je vais me connecter");
    if (err) {
	console.log("THERE WAS AN ERROR:");
	console.log(err);
	throw err;
    }
    console.log("Connected!");
    con.query("SELECT * FROM Chevaux", function (err, result, fields) {
    if (err) throw err;
    	console.log(result);
  	});
});

app.get('/', (req, res) => {
    console.log("get answer simple");
	var theDate = new Date()
	res.send('Hello World!\nthis is a get request' + 'And it is :' + theDate)

});

app.get('/chevaux', (req, res) => {
    console.log("dans le get chevaux");
    con.query("SELECT * FROM Chevaux", function (err, result, fields) {
	if (err) throw err;
        console.log(result);
	console.log(fields);
	res.send(result);
    });
});

app.post('/', function (req, res) {
  res.send('Got a POST request')
})

app.put('/user', function (req, res) {
  res.send('Got a PUT request at /user')
})

app.listen(glb_port, () => {
	var theDate = new Date()
  	console.log(`Example app listening on port ${glb_port}!`)
	console.log('the server has started');
	console.log("the server start at : " + theDate)

});

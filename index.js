/*
* @Author: Baptiste Bertrand-Rapello
* @Date:   2019-10-03 11:34:19
* @Last Modified by:   Baptiste Bertrand-Rapello
* @Last Modified time: 2019-10-08 09:46:44
*/

const express = require('express')
const MongoClient = require('mongodb').MongoClient
const mysql = require('mysql');

const app = express();

const glb_port = 5000
const glb_host_mysql = "localhost"
const glb_usr_mysql = "root"
const glb_pw_mysql = "Salut6789"
const glb_db = "Chevaux"
const glb_url = "mongodb://localhost/cards"

const all_cards =
{
 "imgName": "toto",
 "description": "ceci est la description de la carte",
 "effect" : {"religion":10, "armé":0, "population":0, "argent": 0}
}

const con = mysql.createConnection({
   host: glb_host_mysql,
   user: glb_usr_mysql,
   password: glb_pw_mysql,
   database: glb_db
 });

MongoClient.connect(glb_url, function(err, client) {

	console.log("connected to mongo db")

	var db = client.db('cards')

	console.log(db)

	client.close();
})

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

app.get('/cards', (req, res) => {
    console.log("-> i send the object json \"all_cards\"");
	res.send(all_cards);
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

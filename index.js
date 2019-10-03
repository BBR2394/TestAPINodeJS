/*
* @Author: Baptiste Bertrand-Rapello
* @Date:   2019-10-03 11:34:19
* @Last Modified by:   Baptiste Bertrand-Rapello
* @Last Modified time: 2019-10-03 12:26:11
*/

const express = require('express')
const app = express();

const glb_port = 5000

app.get('/', (req, res) => {
	var theDate = new Date()
	res.send('Hello World!\nthis is a get request' + 'And it is :' + theDate)

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
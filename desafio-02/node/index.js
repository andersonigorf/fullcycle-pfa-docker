const express = require('express')
const app = express()
const port = 3000
const config = {
    host: 'db',
    user: 'root',
    password: 'root',
    database:'nodedb'
};

const mysql = require('mysql')
const connection = mysql.createConnection(config)

const sql = 'SELECT * FROM modulos ORDER BY id'

var str_result = ''
connection.query(sql, function(err, result, fields) {

    if (err) throw err;
    
    result.forEach(element  => {
        str_result += '<p>' + element.nome + '</p>'
      });    
})

connection.end()


app.get('/', (req,res) => {
    res.send('<h1>PFA Docker (Desafio 01) Rocks!</h1>' + str_result)   
})

app.listen(port, ()=> {
    console.log('Rodando na porta ' + port)
})

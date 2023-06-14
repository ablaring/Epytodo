const mysql = require('mysql2');

const connection = mysql.createConnection({
    database: process.env.MYSQL_DATABASE,
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_ROOT_PASSWORD,
});

  connection.connect(function(err) {
    if (err) {
        return;
    }
    console.log('connected as id ' + connection.threadId);
});

module.exports = connection;
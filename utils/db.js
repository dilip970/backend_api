var mysql = require('mysql2');
// test production
// var connection = mysql.createConnection({
//   host: 'azs4s.com',
//   user: 'azs4s_pillbro',
//   password: 'PillBro@#$45RTP(*)',
//   database: 'azs4s_pillbro',
//   multipleStatements: true
// });

// var connection = mysql.createConnection({
//   host: 'azs4s.com',
//   user: 'azs4s_pillbronew',
//   password: 'PillB2022#$%(*)',
//   database: 'azs4s_pillbronew',
//   multipleStatements: true
// });
// development
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'office',
  // multipleStatements: true
})
connection.connect();
connection.query('SELECT 1 + 1 AS solution', function (err, rows, fields) {
  if (err) throw err
  console.log('Database connection established Successfully!!');
});
module.exports = connection;
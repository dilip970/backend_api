const fs = require('fs');
const db = require('../utils/db');
var utils = require('../utils/helpers');
// roles
module.exports.select_where_roles = (select,where) => 
{
    return new Promise(function(resolve, reject) {
        const mysql = "SELECT "+select+" FROM roles WHERE "+where+"";
        db.query(mysql, function (err, rows) {
            if (err) 
                reject(err.errno);
            else 
                resolve(rows);
        });
    }); 
}


module.exports.insert_customer = function(name, email , mobile, password, token, created_at, updated_at)
{
    return new Promise(function(resolve, reject) {
        const mysql = "INSERT INTO `customer` (`name`, `email`, `mobile`, `password`, `token`, `created_at`, `updated_at`) VALUES (?, ?, ?, ?, ?, ?, ?);";
        const queryParams = [name, email , mobile, password, token, created_at, updated_at];
        db.query(mysql, queryParams, function (err, rows) {
            if (err) 
                reject(err);
            else 
                resolve(rows);
        });
    }); 
};

module.exports.select_where_customer = (select,where) => 
{
    return new Promise(function(resolve, reject) {
        const mysql = "SELECT "+select+" FROM customer WHERE "+where+"";
        db.query(mysql, function (err, rows) {
            if (err) 
                reject(err.errno);
            else 
                resolve(rows);
        });
    }); 
}


module.exports.customerlist = function(select){
    return new Promise(function(resolve, reject) {
        const mysql = "SELECT "+select+" FROM customer";
        db.query(mysql, function (err, rows) {
            if (err) 
                reject(err.errno);
            else 
                resolve(rows);
        });
    }); 
}

module.exports.update_customer_by_id = function(set,where){
    return new Promise(function(resolve, reject) {
        const mysql = "UPDATE customer SET "+set+" WHERE "+where+"";
        db.query(mysql, function (err, rows) {
            if (err) 
                reject(err.errno);
            else 
                resolve(rows);
        });
    }); 
}


module.exports.delete_customer = function(where){
    return new Promise(function(resolve, reject) {
        const mysql = "DELETE FROM customer WHERE "+where+"";
        console.log('mysql: ',mysql)
        db.query(mysql, function (err, rows) {
            if (err) 
                reject(err.errno);
            else 
                resolve(rows);
        });
    }); 
}

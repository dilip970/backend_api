var clean = require('xss-clean/lib/xss').clean
var sha256 = require('sha256');
const sqlmodel = require('../models/sql');
var utils = require('../utils/helpers');
var crypto = require('crypto');
var fs = require('fs');
require('dotenv').config();

const pool = require("../utils/db");

module.exports.registration = (req, res, next) => {
    let name = clean(req.body.name) ? clean(req.body.name) : '0';
    let email = clean(req.body.email) ? clean(req.body.email) : '0';
    let mobile = clean(req.body.mobile) ? clean(req.body.mobile) : 0;
    let password = clean(req.body.password) ? clean(req.body.password) : '0';
    let created_at = utils.getCurrentDateAndTimeFormat();
    let updated_at = created_at;
    let token = require('crypto').randomBytes(500).toString('hex');
    utils.check_min_string_length_of_all_array_elements(res, [password]);

    sqlmodel.insert_customer(name, email, mobile, sha256(password), token, created_at, updated_at).then((dbRes) => {
        if (dbRes == 1062) {
            utils.sendResponse(res, {
                status: 400,
                message: 'email already exists',
                data: {}
            });
        } else {
            utils.sendResponse(res, {
                status: 200,
                message: 'registration completed successfully',
                data: {}
            });
        }
    }).catch(err => {
        console.log(err);
        utils.databaseError(res);
    });

}

module.exports.customerlogin = (req, res, next) => {
    let email = clean(req.body.email) ? clean(req.body.email) : '0';
    let password = clean(req.body.password) ? clean(req.body.password) : '0';
    var select = "*";
    var where = "email='" + email + "' AND password='" + sha256(password) + "'";
    sqlmodel.select_where_customer(select, where).then((result) => {
        if (result.length == 0) {
            utils.sendResponse(res, {
                status: 400,
                message: 'authentication failed',
                data: {}
            });
        } else {
            utils.sendResponse(res, {
                status: 200,
                message: "Login successfull",
                data: {
                    user_data: result
                }
            });
        }
    }).catch(err => {
        utils.databaseError(res);
    })
}

module.exports.customerlist = function (req, res, next) {
    let select = "customer.*";
    // let where = "tbl_pharmacy_products.tpp_id = '"+product_id+"'";
    sqlmodel.customerlist(select).then((dbRes) => {
        utils.sendResponse(res, {
            status: 200,
            message: 'success',
            data: {
                product: dbRes
            }
        });
    }).catch(error => {
        utils.databaseError(res);
    });
}


module.exports.get_customer_by_id = function (req, res, next) {
    let id = clean(req.body.id) ? clean(req.body.id) : 0;
    let select = "*";
    let where = "id='" + id + "'";
    sqlmodel.select_where_customer(select, where).then((dbRes) => {
        utils.sendResponse(res, {
            status: 200,
            message: 'customer details by id fetched successfully',
            data: {
                customer_id_details: dbRes
            }
        });
    }).catch(error => {
        utils.databaseError(res);
    });
}

module.exports.update_customer = function (req, res, next) {
    let id = clean(req.body.id) ? clean(req.body.id) : 0;
    let name = clean(req.body.name) ? clean(req.body.name) : 0;
    let email = clean(req.body.email) ? clean(req.body.email) : 0;
    let mobile = clean(req.body.mobile) ? clean(req.body.mobile) : 0;
    let updated_at = utils.getCurrentDateAndTimeFormat();
    let set = "name='" + name + "', mobile='" + mobile + "',email='" + email + "', updated_at='" + updated_at + "'";
    let where = "id='" + id + "'";
    console.log('set :', set)
    console.log('where', where)
    sqlmodel.update_customer_by_id(set, where).then(function (result) {
        utils.sendResponse(res, {
            status: 200,
            message: 'customer details updated successfully',
            data: {}
        });
    }).catch(function (error) {
        utils.databaseError(res);
    });
}


module.exports.delete_customer = function (req, res, next) {
    let id = clean(req.params.id) ? clean(req.params.id) : 0;
    let where = "id='" + id + "'";
    sqlmodel.delete_customer(where).then(DatabaseResponse => {
        utils.sendResponse(res, {
            status: 200,
            message: 'customer details deleted successfully',
            data: {}
        });
    }).catch(e => {
        utils.databaseError(res);
    });
}


module.exports.change_password = function (req, res, next) {
    let id = clean(req.body.id) ? clean(req.body.id) : 0;
    let old_password = clean(req.body.old_password) ? clean(req.body.old_password) : '0';
    let new_password = clean(req.body.new_password) ? clean(req.body.new_password) : '0';
    let updated_at = utils.getCurrentDateAndTimeFormat();
    utils.check_min_string_length_of_all_array_elements(res, [new_password]);
    var select1 = "id";
    var where1 = "id='" + id + "' AND password='" + sha256(old_password) + "' ";
    sqlmodel.select_where_customer(select1, where1).then(result1 => {
        if (result1.length == 0) {
            utils.sendResponse(res, {
                status: 400,
                message: "old password is incorrect",
                data: {}
            });
        } else {
            var set1 = "password='" + sha256(new_password) + "', updated_at='" + updated_at + "'";
            var where2 = "id='" + id + "'";
            sqlmodel.update_customer_by_id(set1, where2).then(function (result2) {
                utils.sendResponse(res, {
                    status: 200,
                    message: "password updated successfully",
                    data: {}
                });
            }).catch(err2 => {
                utils.databaseError(res);
            })
        }
    }).catch(function (err) {
        utils.databaseError(res);
    })
}

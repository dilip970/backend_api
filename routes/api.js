const express = require('express');
const api = express.Router();
const apicontroller = require('../controllers/api');
const upload = require("../middlewares/upload");
// generate api documentation with swagger
api.get('/generate-api-documentation',apicontroller.generate_swagger_api_documentation);
// roles
api.post('/registration',apicontroller.registration);
api.post('/customerlogin',apicontroller.customerlogin);
api.get('/customerlist',apicontroller.customerlist);
api.post('/get-customer-by-id',apicontroller.get_customer_by_id);
api.patch('/update-customer',apicontroller.update_customer);
api.delete('/delete-customer/:id',apicontroller.delete_customer);
api.post('/change-password',apicontroller.change_password);

module.exports = api;
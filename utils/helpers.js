const db = require('../utils/db');
module.exports.sendResponse = function sendResponse(responseObj, response){
    responseObj.send(
        response
    );
    responseObj.end();
}


module.exports.getCurrentDateAndTimeFormat = () =>
{
     return new Date().toISOString().replace(/T/, ' ').replace(/\..+/, '');
}

module.exports.getCurrentDateFormat = function(){
    return new Date().toISOString().slice(0, 10);
}

module.exports.getTomorrowDateFormat = function(){
    var current = new Date(); 
    var followingDay = new Date(current.getTime() + 86400000);
    return followingDay.toISOString().slice(0,10);
}


module.exports.databaseError = (responseObj) => {
    responseObj.send({
        status : 400,
        message : "database error",
        data : {}
    });
    responseObj.end();
}

module.exports.check_min_string_length_of_all_array_elements = (res,incoming_array) => {
    let det_error = 0;
    for(let i=0;i<incoming_array.length;i++){
        if(incoming_array[i].length<8){
            det_error = 1;
        }
    }
    if(det_error==1){
        res.send({
            status : 400,
            message : 'password length should be equal or greater than 8',
            data : {}
        });
        res.end();
    }
}

module.exports.checkCryptoAccessToken = async function(res, id, token){
        const mysql = "SELECT id FROM customer WHERE id='"+id+"' AND token='"+token+"' ";
        db.query(mysql, function (err, rows) {
            if (err) 
                return err.errno;
            else 
                if(rows.length==0){
                    res.send({
                        status : 400,
                        message : "token verification failed",
                        data : {}
                    });
                    res.end();
                }
        });
}


module.exports.generate_randomized_number = function(){
    return (Math.random() * 100000000000000000  + new Date().getTime()).toFixed(0);
}
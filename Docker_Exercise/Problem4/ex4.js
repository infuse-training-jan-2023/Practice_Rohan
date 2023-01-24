const moment = require("moment");

let current_date = process.env.INFO;

let json_data = JSON.parse(current_date);
let date = moment(json_data);
console.log(date.format("Do MMM YYYY"));

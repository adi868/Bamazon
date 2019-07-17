var inquirer = require("inquirer");
const chalk = require("chalk");
var mySQL = require("mysql");

var connection = mySQL.createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db"
});
connection.connect(function (error) {
    if (error) throw error;
    console.log("We have an error", connection.threadId);
})

console.log("test")

// function showItems() {
//     varItems = "SELECT * FROM products"
// }
// showItems();

// inquirer
//     .prompt([{
//             type: "input",
//             message: (chalk.blue("Welcome to Bamazon.")) + "\n" + "Please enter the ID of the product you would like to buy:",
//             name: "itemId"
//         },
//         {
//             type: "input",
//             message: "How many units of the product would you like to buy?",
//             name: "units"
//         }
//     ]).then(function (userResponse) {
//         var product = "SELECT item_id FROM products";
//         connection.query(query, {
//             product_name: answer.product_name
//         }, function (error, response) {
//             for (var i = 0; i < response.length; i++) {
//                 if (userResponse.item_Id === product) {
//                     console.log("Cool! We got a match.")
//                 } else {
//                     console.log("Nope. Didn't work.")
//                 }
//             }
//         })
//     });


// function IDSearch(){
// var query = "SELECT item_id FROM products"
// connection.query(query)
// }

// function unitSearch(){
// var unitQuery = "SELECT stock_quantity FROM products"

// }

//     var unit = userResponse.units
//     console.log("You have chosen" + product);
//     console.log("You would like" + unit + "units");
//     console.log("Please wait while we check out inventory.")


//      if(userResponse.itemId ==true){
//      console.log("Ok!")
//  }
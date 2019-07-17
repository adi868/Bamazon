var inquirer = require("inquirer");
const chalk = require("chalk");
var mySQL = require("mysql");
var Table = require("cli-table3");
require('dotenv').config();

var connection = mySQL.createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db"
});
connection.connect(function (error) {
    if (error) throw error;
    console.log("Connected as ID:", connection.threadId + "\n");
    inventoryItem();
});

function inventoryItem() {
    var query = "SELECT * FROM products";
    connection.query(query, function (error, response) {
        if (error) throw error;
        var divider = "\n------------------------------------------------------------\n";
        var greeting = ((chalk.green("Welcome to Bamazon!")) + "\n" + "Here is the current available inventory:" + "\n")
        console.log(greeting);
        var table = new Table({
            head: ["ID", "Item", "Price"]
        });
        for (var i = 0; i < response.length; i++) {
            table.push([
                response[i].item_id,
                response[i].product_name,
                '$'+ response[i].price
            ])
        }
        console.log(table.toString());
        runProgram();
    })
}

function runProgram() {
    inquirer
        .prompt([{
                type: "input",
                message: "\n" + "Please enter the ID of the product you would like to buy:",
                name: "itemId"
            },
            {
                type: "input",
                message: "How many units of the product would you like to buy?",
                name: "units",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }

            }
        ]).then(function (userResponse) {
            var query = "SELECT * FROM products";
            connection.query(query, function (error, response) {
                if (error) throw error;
            })
        });

}


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
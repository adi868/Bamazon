var inquirer = require("inquirer");
const chalk = require("chalk");
var mysql = require("mysql");

inquirer
.prompt([{
    type: "input",
    message: (chalk.blue("Welcome to Bamazon.")) + "\n" + "Please enter the ID of the product you would like to buy:",
    name: "itemId"
},
{
    type: "input",
    message:"How many units of the product would you like to buy?",
    name: "units"
}
]).then(function(userResponse){
    if(userResponse ==true){
    console.log("Ok!")
}
else{
    console.log("Insufficient quantity! Your order cannot go through.")
}
});
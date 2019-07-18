# Bamazon

## Overview 
Welcome to Bamazon! Bamazon is a command line interface application that users can run to request and place real-time orders through a virtual storefront. Using the power of MySQL, Javascript, and Node.js, users can assume the role of a real customer, and Bamazon will take in orders, as well as deplete stock from the store's inventory.

## How does it work?
To run this program, a couple steps of setup are required. First, make sure you have the appropriate `npm` packages installed on your computer.

Next, run  `bamazon` in your terminal. Type in `node bamazonCustomer.js`. This will run the Bamazon application. From there, Bamazon will prompt the user through a series of inquirer prompts. Select `Make a purchase`. Bamazon will search the database for the current inventory and display all the available items in stock. 

Navigate through the menu options to select your requested action from the list. Bamazon will then search the database for your requested item ID, match your chosen selection, and check whether the request can be completed. If the item is out of stock, Bamazon will notify you it cannot complete the order. 

![Bamazon-1Demo](https://media.giphy.com/media/lRdhbAMTVuqSmcYLT4/giphy.gif)

However, if the number of items are in stock, Bamazon will complete your order, update the stock's inventory, and calculate the total cost of your transaction. 

![Bamazon-Demo](https://media.giphy.com/media/W55dMVu6qUidXWk1zg/giphy.gif)

And..there it is, folks. Try it out yourself, saavy shoppers!

### Technologies Used:
* JavaScript
* Node.js
* MySQL
* npm packages

### Developer:
Adina Cianciotto

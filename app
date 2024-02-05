css:
html, body {
    margin: 0;
    padding: 0;
}
html:
<!doctype html>
<html>
    <head>
        <title>Add to Cart</title>
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <input type="text" id="input-field" placeholder="Bread">
        <button id="add-button">Add to cart</button>
        <script src="index.js"></script>
    </body>
</html>
java:
/*
Challenge:
Make it so that when you click the 'Add to cart' button, whatever is written in the input field should be console logged.
*/

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    console.log(inputValue)
})
------------------------------------------------------------------------
styling
css:
html, body {
    margin: 0;
    padding: 0;
    font-family: 'Rubik', sans-serif;
    background-color: #EEF0F4;
}

.container {
    display: flex;
    flex-direction: column;
    max-width: 320px;
    margin: 30px auto;
}

img {
    width: 150px;
    margin: 0 auto;
}

input {
    color: #432000;
    background-color: #DCE1EB;
    border: 0;
    padding: 15px;
    border-radius: 8px;
    font-size: 20px;
    text-align: center;
    font-family: 'Rubik', sans-serif;
    margin: 10px 0;
}

button {
    color: #FDFDFD;
    background-color: #AC485A;
    border: 0;
    padding: 15px;
    border-radius: 8px;
    font-size: 20px;
    text-align: center;
    font-family: 'Rubik', sans-serif;
}
------------------------------------------------------------------------
EXAMPLES MOVIES
FIREBASE REALTIME DATABASE
CSS:
html, body {
    margin: 0;
    padding: 0;
    font-family: 'Inter', sans-serif;
    background-color: #260F0F;
    color: #FBFBFB;
}

.container {
    max-width: 380px;
    display: flex;
    flex-direction: column;
    row-gap: 20px;
    margin: 30px auto;
}

h1 {
    font-size: 45px;
    font-family: 'Ultra', serif;
    margin: 0;
    text-align: center;
    display: block;
}

.field {
    display: flex;
    column-gap: 10px;
}

input[type="text"] {
    background-color: #6C3932;
    font-size: 25px;
    padding: 15px;
    border: 0;
    border-radius: 10px;
    text-align: center;
    font-family: 'Inter', sans-serif;    
    width: 100%;
    color: #FBFBFB;
}

input[type="text"]::placeholder {
    color: #371F1B;
}

button {
    background-color: #A57042;
    color: #260F0F;
    font-size: 25px;
    padding: 15px;
    border: 0;
    border-radius: 10px;
    width: 70px;
}

button:hover {
    cursor: pointer;
    background-color: #D3945D;
}

ul {
    padding: 0;
    display: flex;
    flex-direction: column;
    row-gap: 15px;
    text-align: center;
}

li {
    list-style: none;
    background-color: #531616;
    font-size: 25px;
    padding: 15px;
    box-shadow: 0px 4px 5px #000;    
}
HTML:
<!doctype html>
<html>
    <head>
        <title>Reel Time</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300&family=Ultra&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <div class="container">
            <h1>Reel Time</h1>
            <div class="field">
                <input type="text" id="input-field" placeholder="Pulp Fiction">
                <button id="add-button">+</button>
            </div>
        </div>
        <script src="functions.js" type="module"></script>
        <script src="index.js" type="module"></script>
    </body>
</html>
JAVA:
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js"
import { getDatabase, ref, push } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-database.js"

const appSettings = {
    databaseURL: "https://playground-6514d-default-rtdb.europe-west1.firebasedatabase.app/"
}

const app = initializeApp(appSettings)
const database = getDatabase(app)
const moviesInDB = ref(database, "movies")

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    push(moviesInDB, inputValue)
    
    console.log(`${inputValue} added to database`)
})
JAVA2:
export function add(a,b) {
    return a + b
}
-----------------------------------------------------------------
ADDING FIREBASE TO PROJECT
HTML:
<!doctype html>
<html>
    <head>
        <title>Add to Cart</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <div class="container">
            <img src="assets/cat.png">
            <input type="text" id="input-field" placeholder="Bread">
            <button id="add-button">Add to cart</button>
        </div>
        <script src="index.js" type="module"></script>
    </body>
</html>
JAVA:
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js"
import { getDatabase, ref, push } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-database.js"

const appSettings = {
    databaseURL: "https://realtime-database-df319-default-rtdb.europe-west1.firebasedatabase.app/"
}

const app = initializeApp(appSettings)
const database = getDatabase(app)
const shoppingListInDB = ref(database, "shoppingList")

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    push(shoppingListInDB, inputValue)
    
    console.log(inputValue)
})
-----------------------------------------------------------------
REFACTORING
JAVA:
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js"
import { getDatabase, ref, push } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-database.js"

const appSettings = {
    databaseURL: "..."
}

const app = initializeApp(appSettings)
const database = getDatabase(app)
const shoppingListInDB = ref(database, "shoppingList")

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")
const shoppingListEl = document.getElementById("shopping-list")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    push(shoppingListInDB, inputValue)
    
    clearInputFieldEl()

    appendItemToShoppingListEl(inputValue)
})

function clearInputFieldEl() {
    inputFieldEl.value = ""
}

function appendItemToShoppingListEl(itemValue) {
    shoppingListEl.innerHTML += `<li>${itemValue}</li>`
}
-----------------------------------------------------------------
TURNING OBJECT INTO AN ARRAY
let scrimbaUsers = {
    "00": "sindre@scrimba.com",
    "01": "per@scrimba.com",
    "02": "frode@scrimba.com"
}

// Challenge: Create a let variable called 'scrimbaUsersEmails' and use one of Object methods to set it equal to an array with the values
let scrimbaUsersEmails = Object.values(scrimbaUsers)
console.log( scrimbaUsersEmails )
// Challenge: Create a let variable called 'scrimbaUsersIDs' and use one of Object methods to set it equal to an array with the keys
let scrimbaUsersIDs = Object.keys(scrimbaUsers)
console.log( scrimbaUsersIDs )
// Challenge: Create a let variable called 'scrimbaUsersEntries' and use one of Object methods to set it equal to an array with the both the keys and values
let scrimbaUsersEntries = Object.entries(scrimbaUsers)
console.log( scrimbaUsersEntries )
-----------------------------------------------------------------
JAVA:
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js"
import { getDatabase, ref, push, onValue } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-database.js"

const appSettings = {
    databaseURL: "https://realtime-database-df319-default-rtdb.europe-west1.firebasedatabase.app/"
}

const app = initializeApp(appSettings)
const database = getDatabase(app)
const shoppingListInDB = ref(database, "shoppingList")

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")
const shoppingListEl = document.getElementById("shopping-list")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    push(shoppingListInDB, inputValue)
    
    clearInputFieldEl()

    appendItemToShoppingListEl(inputValue)
})

/*
Challenge:
Call the onValue function with
shoppingListInDB as the first argument and
function(snapshot) {} as the second argument
*/

onValue(shoppingListInDB, function(snapshot) {
    let itemsArray = Object.values(snapshot.val())
    // Challenge: Use Object.values() to convert snapshot.val() from an Object to an Array. Create a variable for this.
    console.log(itemsArray)
})

function clearInputFieldEl() {
    inputFieldEl.value = ""
}

function appendItemToShoppingListEl(itemValue) {
    shoppingListEl.innerHTML += `<li>${itemValue}</li>`
}
------------------------------------------------------------------------
JAVA:
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js"
import { getDatabase, ref, push, onValue } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-database.js"

const appSettings = {
    databaseURL: "https://realtime-database-df319-default-rtdb.europe-west1.firebasedatabase.app/"
}

const app = initializeApp(appSettings)
const database = getDatabase(app)
const shoppingListInDB = ref(database, "shoppingList")

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")
const shoppingListEl = document.getElementById("shopping-list")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    push(shoppingListInDB, inputValue)
    
    clearInputFieldEl()
})

onValue(shoppingListInDB, function(snapshot) {
    let itemsArray = Object.values(snapshot.val())
    
    clearShoppingListEl()
    
    for (let i = 0; i < itemsArray.length; i++) {
        appendItemToShoppingListEl(itemsArray[i])
    }
})

function clearShoppingListEl() {
    shoppingListEl.innerHTML = ""
}

function clearInputFieldEl() {
    inputFieldEl.value = ""
}

function appendItemToShoppingListEl(itemValue) {
    shoppingListEl.innerHTML += `<li>${itemValue}</li>`
}
--------------------------------------------------------------------------
CSS:
html, body {
    margin: 0;
    padding: 0;
    font-family: 'Rubik', sans-serif;
    background-color: #EEF0F4;
}

.container {
    display: flex;
    flex-direction: column;
    max-width: 320px;
    margin: 30px auto;
}

img {
    width: 150px;
    margin: 0 auto;
}

input {
    color: #432000;
    background-color: #DCE1EB;
    border: 0;
    padding: 15px;
    border-radius: 8px;
    font-size: 20px;
    text-align: center;
    font-family: 'Rubik', sans-serif;
    margin: 10px 0;
}

button {
    color: #FDFDFD;
    background-color: #AC485A;
    border: 0;
    padding: 15px;
    border-radius: 8px;
    font-size: 20px;
    text-align: center;
    font-family: 'Rubik', sans-serif;
}

ul {
    list-style-type: none;
    padding: 0;
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

ul li {
    font-size: 20px;
    background-color: #FFFDF8;
    padding: 15px;
    border-radius: 8px;
    flex-grow: 1;
    text-align: center;
    box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.2)
}
--------------------------------------------------------------------------
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js"
import { getDatabase, ref, push, onValue, remove } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-database.js"

const appSettings = {
    databaseURL: "https://realtime-database-4e66e-default-rtdb.europe-west1.firebasedatabase.app"
}

const app = initializeApp(appSettings)
const database = getDatabase(app)
const shoppingListInDB = ref(database, "shoppingList")

const inputFieldEl = document.getElementById("input-field")
const addButtonEl = document.getElementById("add-button")
const shoppingListEl = document.getElementById("shopping-list")

addButtonEl.addEventListener("click", function() {
    let inputValue = inputFieldEl.value
    
    push(shoppingListInDB, inputValue)
    
    clearInputFieldEl()
})

onValue(shoppingListInDB, function(snapshot) {
    let itemsArray = Object.entries(snapshot.val())
    
    clearShoppingListEl()
    
    for (let i = 0; i < itemsArray.length; i++) {
        let currentItem = itemsArray[i]
        let currentItemID = currentItem[0]
        let currentItemValue = currentItem[1]
        
        appendItemToShoppingListEl(currentItem)
    }
})

function clearShoppingListEl() {
    shoppingListEl.innerHTML = ""
}

function clearInputFieldEl() {
    inputFieldEl.value = ""
}

function appendItemToShoppingListEl(item) {
    let itemID = item[0]
    let itemValue = item[1]
    
    let newEl = document.createElement("li")
    
    newEl.textContent = itemValue
    
    // Challenge: Attach an event listener to newEl and make it so you console log the id of the item when it's pressed.
    newEl.addEventListener("click", function() {
        // Challenge: Make a let variable called 'exactLocationOfItemInDB' and set it equal to ref(database, something) where you substitute something with the code that will give you the exact location of the item in question.
        let exactLocationOfItemInDB = ref(database, `shoppingList/${itemID}`)
        
        // Challenge: Use the remove function to remove the item from the database
        remove( exactLocationOfItemInDB )
    })
    
    shoppingListEl.append(newEl)
}
----------------------------------------------------

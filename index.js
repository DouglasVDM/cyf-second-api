const express = require('express');
const app = express();
const port = 5002;

let YOUR_WORST_FOOD = "fast food"
let YOUR_NAME = "douglas"

app.get('/', (req, res) => {
    res.send(`Welcome to ${YOUR_NAME}'s 2nd API`);

});

app.get('/worstfood', (req, res) => {
    res.send(`My worst food is ${YOUR_WORST_FOOD}`);
});

app.get('/worstfoodfrom2', (req, res) => {
    res.send(YOUR_WORST_FOOD);
});

app.listen(port, () => {
    console.log(`Now listening on port ${port}`);
});

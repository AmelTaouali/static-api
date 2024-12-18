const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello, this is my static API!');
});

const PORT = 4000;
app.listen(PORT, () => {
    console.log(`API running on http://localhost:${PORT}`);
});

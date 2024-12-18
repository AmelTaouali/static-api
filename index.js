const express = require('express');
const app = express();

app.use('/', (req, res) => {
    res.send("Hello , i'm amel taouali");
});

const PORT = 8060;
app.listen(PORT, () => {
    console.log(`API running on http://localhost:${PORT}`);
});

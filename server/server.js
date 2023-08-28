const express = require('express');
const cors = require('cors');

const app = express();
const port = 8888;

app.use(express.json());
app.use(cors());

app.use('/api/lotr', require('./endpoint/lotr'));
app.use('/file', express.static('static'));

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
})

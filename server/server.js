const express = require('express');
const cors = require('cors');

const app = express();
const port = 8888;

app.use(express.json());
app.use(cors());

app.use('/static', express.static('static'));
app.use('/api/lotr', require('./endpoint/lotr'));
app.use('/api/positions', require('./endpoint/positions'));
app.use('/api/timezone', require('./endpoint/timezone'));
app.use('/api/registration', require('./endpoint/registration'));

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
})

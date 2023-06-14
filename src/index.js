const dotenv = require('dotenv');
const express = require('express');
var bcrypt = require('bcryptjs');

const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.raw());
const PORT = process.env.PORT || 3000;

dotenv.config();
require('./routes/user/user')(app, bcrypt);
require('./routes/todos/todos')(app, bcrypt);
require('./routes/auth/auth')(app, bcrypt);

app.listen(PORT, () => {
  console.log(`Example app listening at http://localhost:${PORT}`);
});
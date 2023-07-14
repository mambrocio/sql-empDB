const express = require('express');

const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: '[90ggm5!SQP',
      // MySQL password
      password: '',
      database: 'rcm_db'
    },
    console.log(`Connected to the classlist_db database.`)
  );
  

  
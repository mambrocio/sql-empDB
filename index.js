const fs = require('fs');

fs.readFile('welcome.txt', 'utf8', (error, greeting) =>
  error ? console.error(error) : console.log(greeting)
  )


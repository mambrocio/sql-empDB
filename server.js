// const db = require('./db/connection.js');
const inquirer = require('inquirer');
const db = require('./db');

//Either functions to validate or leave that up to the then after 



function vwDpart() {
  db.findAllDepartments()

    .then(([rows]) => {
      let departments = rows;
      console.log("\n");
      console.table(departments);
    })
    .then(() => empDB());
}


function empDB(){
  inquirer
    .prompt([
      {
      type: 'list',
      message: 'Enter DB Command To View ',
      name: 'DBInput',
      choices: [{name: "View Departments", value: "View_Departments"}, "View Roles", "View Employees"],
      }
    ])

    .then(function(res){
      let choice = res.DBInput;
      console.log(choice)
        switch (choice){
          case "View_Departments":
            vwDpart();
            break;
        }
    })
}

empDB();
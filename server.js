const db = require('./db/connection.js');
const inquirer = require('inquirer');

//Either functions to validate or leave that up to the then after 

function viewDpart(){

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
            viewDpart();
            break;
        }
    })
}

empDB();
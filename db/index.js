// ask questions about next action
// What do you want to do?
// CREATE   - do first
// READ     - second
// UPDATE   - last
// DELETE   - bonus

// Which table would you like to work with?
// Department
// Role
// Employee

// Do department first as inquirer
// Create a department
// Read a department / Read all departments
// Do roles second
// Create a role
// Read a role / Read all roles
// Do Employee last
// Create an employee
// Read a role / Read all roles

const inquirer = require("inquirer");

async function getAction() {
  let action = await inquirer.prompt([
    {
      type: "list",
      name: "action",
      message: "What would you like to do?",
      choices: [
        "Create department",
        "Create role",
        "Create employee",
        "View departments",
        "View roles",
        "View employees",
      ],
    },
  ]);
  return action;
}

async function getDepartment(){
    let department = await inquirer.prompt([
        {
            type: "input",
            name: "departmentName",
            message: "Enter new department's name: "
        }
    ])
    return department;
}

async function getRole(){
    let department = await inquirer.prompt([
        {
            type: "input",
            name: "title",
            message: "Enter new role's title: "
        },
        {
            type: "input",
            name: "salary",
            message: "Enter new role's salary: "
        },
        // Query database, and pass in the array obtained from that table
        // Limiting user input, and less chance of misinput
        {
            type: "input",
            name: "departmentID",
            message: "Enter new role's department ID: "
        }
    ])
    return department;
}

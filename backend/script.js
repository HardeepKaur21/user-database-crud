const db = require("./db"); //database connection

function createUser() {
  const user = {
    title: "Ms",
    firstName: "Anna",
    surname: "Murphy",
    mobile: "0871234567",
    email: "anna.murphy@example.com",
  };

  //? is a placeholder
  const sql = `INSERT INTO users (title, first_name, surname, mobile, email) VALUES (?, ?, ?, ?, ?)`;

  db.query(
    sql,
    [user.title, user.firstName, user.surname, user.mobile, user.email],
    (err, results) => {
      if (err) {
        console.log("Failed to insert user: ", err.message);
        return;
      }

      console.log("User inserted successfully");
      console.log("New user ID: ", results.insertId);
    }
  );
}

function readUsers() {
  const sql = `SELECT * FROM users`;

  db.query(sql, (err, results) => {
    if (err) {
      console.log("Could not retrieve users", err.message);
      return;
    }
    console.log(results);
  });
}

function updateUser() {
  const newEmail = "anna.new.email@email.com";
  const newMobile = "08999999999";
  const userId = 1;

  const sql = `UPDATE users SET email = ?, mobile = ? WHERE id = ?`;

  db.query(sql, [newEmail, newMobile, userId], (err) => {
    if (err) {
      console.log("Error updating user: ", err.message);
    } else {
      console.log("User updated");
    }
  });
}

function deleteUser(num) {
  const userId = num;

  const sql = `DELETE FROM users WHERE id = ?`;

  db.query(sql, userId, (err, result) => {
    if (err) {
      console.log("User", userId, "was not deleted because: ", err.message);
      return;
    }
    console.log("User successfully deleted");
    console.log("Rows affected: ", result.affectedRows);
  });
}

function createAddress() {
  const address = {
    line1: "12 Main Street",
    line2: "Apartment 2A",
    town: "Maynooth",
    county: "Kildare",
    eircode: "W23 ABC",
  };

  const sql = `INSERT INTO addresses (address_line_1, address_line_2, town, county, eircode) VALUES (?,?,?,?,?)`;

  const values = [
    address.line1,
    address.line2,
    address.town,
    address.county,
    address.eircode,
  ];

  db.query(sql, values, (err) => {
    if (err) {
      console.log("Failed to make address: ", err.message);
      return;
    }
    console.log("The address was created");
  });
}

function linkAddresstoUser(num) {
  const userId = num;
  const addressId = num;
  const addressType = "home";

  const sql = `INSERT INTO user_addresses (user_id, address_id, address_type) VALUES (?, ?, ?)`;

  db.query(sql, [userId, addressId, addressType], (err) => {
    if (err) {
      console.log("Could not link address to user because: ", err.message);
      return;
    }
    console.log("Address linked successfully");
  });
}

function readUsersAndAddresses() {
  const userId = 1;

  const sql = `SELECT users.id AS user_id, 
                users.first_name,
                users.surname,
                users.mobile,
                users.email,
                user_addresses.address_type,
                addresses.address_line_1,
                addresses.address_line_2,
                addresses.town,
                addresses.county,
                addresses.eircode
              FROM users
              JOIN user_addresses ON users.id = user_addresses.user_id
              JOIN addresses ON addresses.id = user_addresses.address_id
              WHERE users.id = ?`;

  db.query(sql, userId, (err, results) => {
    if (err) {
      console.log("Could not retrieve user with address: ", err.message);
      return;
    }
    console.log("User with address: ", results);
  });
}

function updateAddress() {
  const addressId = 1;
  const newAddressLine1 = "99 New Main Street";
  const newTown = "Wexford";
  const newEircode = "T12 XYZ";

  const sql = `UPDATE addresses SET address_line_1 = ?, town = ?, eircode = ? WHERE id = ?`;

  db.query(sql, [newAddressLine1, newTown, newEircode, addressId], (err) => {
    if (err) {
      console.log("Could not update address: ", err.message);
      return;
    }
    console.log("Address Updated successfully");
  });
}

function deleteAddressLink() {
  const addressId = 14;

  const sql = `DELETE FROM addresses WHERE id = ?`;

  db.query(sql, addressId, (err) => {
    if (err) {
      console.log("Could not delete address because: ", err.message);
      return;
    }
    console.log("Address deleted successfully");
  });
}

let num = 10;
let num1 = 14;

createUser();
readUsers();
updateUser();
createAddress();
//linkAddresstoUser(num1);
readUsersAndAddresses();
updateAddress();
//deleteUser(num);
deleteAddressLink();

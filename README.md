# User Database CRUD

A small full-stack CRUD project for managing user details.

This was a university assignment where the main goal was to connect a backend application to a MySQL database and practise creating, reading, updating, and deleting user data.

The project uses Node.js, MySQL, and a simple HTML/JavaScript frontend.

## Screenshots

<p>
  <img src="screenshot1.png" width=400">
</p>

<p>
  <img src="screenshot2.png" width="400">
</p>

## What I Learned

This project was my first proper introduction to backend web development and databases, and I ended up learning way more than I expected.

I learned how XAMPP works and why PHP projects need a web server instead of simply opening files in the browser. I also became familiar with phpMyAdmin and how it can be used to create databases, tables and inspect data while debugging.

On the database side, I learned how to design tables and create relationships using primary keys and foreign keys. I was introduced to concepts like REFERENCES, ENUM, and ON DELETE CASCADE, which showed me that databases can enforce rules and maintain data integrity automatically rather than relying only on application code.

I also learned how Node.js projects are structured and how files communicate with each other using module.exports and require(). Working with MySQL from JavaScript taught me how to connect to a database, execute SQL queries, and safely pass user data using placeholders with .execute(). I also discovered the difference between .query() and .execute() and why prepared statements are important for preventing SQL injection.

Another big thing I learned was how data moves between the frontend, backend and database. I got my first experience with AJAX and asynchronous requests, which helped me understand that pages don't always need to refresh to communicate with a server. I also encountered CORS for the first time and learned that browser security rules can block requests unless the backend explicitly allows them

Overall, this project taught me how the browser, server and database work together and gave me my first taste of full-stack development. It was probably the assignment where everything started to connect together in my head.

## Features

- Connects Node.js to a MySQL database
- Creates new users
- Retrieves users from the database
- Updates user details
- Deletes user/address records
- Uses SQL queries from JavaScript
- Uses a simple backend server
- Uses fetch() on the frontend
- Sends and receives JSON data
- Basic frontend with buttons to load and add users only

## Technologies Used

- JavaScript
- Node.js
- Express
- MySQL
- mysql2
- CORS
- XAMPP / local MySQL server

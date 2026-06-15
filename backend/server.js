const express = require("express");
const db = require("./db");
const cors = require("cors");

const app = express(); //creates server object
const PORT = 3000;

//allow JSON data from frontend
app.use(express.json());
app.use(cors());

//req is what you get from the browser and res is what you send back to it
//the below is a test route
app.get("/", (req, res) => {
  res.send("Backend is running");
});

app.get("/users", (req, res) => {
  const sql = `SELECT * FROM users`;

  db.query(sql, (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.post("/users", (req, res) => {
  const { title, first_name, surname, mobile, email } = req.body;

  const sql = `INSERT INTO users (title, first_name, surname, mobile, email) VALUES(?, ?, ?, ?, ?)`;

  const values = [title, first_name, surname, mobile, email];

  db.query(sql, values, (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    res.json({
      message: "User created successfully",
      userId: results.insertId,
    });
  });
});

//start server
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});

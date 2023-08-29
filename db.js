// import mysql from "mysql"

// export const db = mysql.createConnection({
//   host:"localhost",
//   user:"root",
//   password: process.env.DB_KEY,
//   database:"blog"
// })

import sqlite3 from "sqlite3";

export const db = new sqlite3.Database("blog.db", (err) => {
  if (err) {
    console.error("Error connecting to the database:", err.message);
  } else {
    console.log("Connected to the database");
  }
});

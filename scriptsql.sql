-- database: /mnt/c/Users/Jonathan/Downloads/youtube2022-blog-app/youtube2022-blog-app/api/blog.db

-- Use the ▷ button in the top right corner to run the entire file.



CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);


CREATE TABLE posts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  uid INT,
  title VARCHAR(255) NOT NULL,
  `desc` TEXT,
  img VARCHAR(255),
  cat VARCHAR(255),
  `date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (uid) REFERENCES users (id)
);
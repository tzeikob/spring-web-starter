CREATE TABLE users (
  id INTEGER IDENTITY PRIMARY KEY,
  username VARCHAR(25) NOT NULL,
  password VARCHAR(145) NOT NULL,
  enabled BOOLEAN DEFAULT FALSE NOT NULL,
  UNIQUE (username));

CREATE TABLE roles (
  id INTEGER IDENTITY PRIMARY KEY,
  user_id INTEGER NOT NULL,
  name VARCHAR(25) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id),
  UNIQUE(name, user_id));

CREATE TABLE persons (
  id INTEGER IDENTITY PRIMARY KEY,
  name VARCHAR(25) NOT NULL,
  UNIQUE (name));

CREATE TABLE items (
  id INTEGER IDENTITY PRIMARY KEY,
  person_id INTEGER NOT NULL,
  name VARCHAR(25) NOT NULL,
  description VARCHAR(115) NOT NULL,
  timestamp DATE NOT NULL,
  FOREIGN KEY (person_id) REFERENCES persons (id));


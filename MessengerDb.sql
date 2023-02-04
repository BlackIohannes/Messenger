-- create the users table
CREATE TABLE users (
  user_id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL UNIQUE
);

-- create the chats table
CREATE TABLE chats (
  chat_id INTEGER PRIMARY KEY,
  chat_name VARCHAR(255) NOT NULL
);

-- create the messages table
CREATE TABLE messages (
  message_id INTEGER PRIMARY KEY,
  sender_id INT NOT NULL,
  receiver_id INT NOT NULL,
  chat_id INT NOT NULL,
  message TEXT NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  FOREIGN KEY (sender_id) REFERENCES users(user_id),
  FOREIGN KEY (receiver_id) REFERENCES users(user_id),
  FOREIGN KEY (chat_id) REFERENCES chats(chat_id)
);

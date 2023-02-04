CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  name VARCHAR(255),
  phone_number VARCHAR(15),
  profile_picture VARCHAR(15)
);

CREATE TABLE Chats (
  chat_id INT PRIMARY KEY,
  sender_id INT,
  receiver_id INT,
  message TEXT,
  timestamp DATETIME,
  FOREIGN KEY (sender_id) REFERENCES Users(user_id),
  FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);

CREATE TABLE Groups (
  group_id INT PRIMARY KEY,
  group_name VARCHAR(255),
  administrator_id INT,
  FOREIGN KEY (administrator_id) REFERENCES Users(user_id)
);

INSERT INTO Users (user_id, name, phone_number, profile_picture)
VALUES (1, 'John Doe', '1234567890', 'image_data_1'),
       (2, 'Jane Doe', '0987654321', 'image_data_2');

INSERT INTO Chats (chat_id, sender_id, receiver_id, message, timestamp)
VALUES (1, 1, 2, 'Hi Jane!', '2022-01-01 10:00:00'),
       (2, 2, 1, 'Hi John!', '2022-01-01 10:05:00');

INSERT INTO Groups (group_id, group_name, administrator_id)
VALUES (1, 'Family', 1),
       (2, 'Friends', 2);

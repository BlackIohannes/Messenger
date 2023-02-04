# Messenger
This document outlines the SQL commands used to create and insert data into three tables: `Users`, `Chats`, and `Groups`. The tables are defined as follows:

## Users Table
The `Users` table contains the following columns:
- `user_id`: an integer primary key used to identify each user.
- `name`: a string with a maximum length of 255 characters to store the user's name.
phone_number: a string with a maximum length of 15 characters to store the user's phone number.
 - `profile_picture`: a string with a maximum length of 15 characters to store the user's profile picture data.
 
 ## Chats Table
 The `Chats` table contains the following columns:
 - `chat_id`: an integer primary key used to identify each chat.
 - `sender_id`: an integer that references the user_id column in the Users table and indicates the sender of the chat message.
 - `receiver_id`: an integer that references the user_id column in the Users table and indicates the recipient of the chat message.
 - `message`: a text field to store the chat message.
 - `timestamp`: a datetime field to store the time the message was sent.
 
 ## Groups Table

The Groups table contains the following columns:

- `group_id`: an integer primary key used to identify each group.
- `group_name`: a string with a maximum length of 255 characters to store the group's name.
- `administrator_id`: an integer that references the user_id column in the Users table and indicates the administrator of the group.

## Data Insertions

The `Users` table is populated with two rows of data, with the `user_id`, `name`, `phone_number`, and `profile_picture` values specified.
The `Chats` table is populated with two rows of data, with the `chat_id`, `sender_id`, `receiver_id`, `message`, and `timestamp` values specified.
The `Groups` table is populated with two rows of data, with the `group_id`, `group_name`, and `administrator_id` values specified.

USE adlister_db;

INSERT INTO users (username, email, password)
VALUES ('bob123', 'bob@gmail.com', 'letmein');

INSERT ads (user_id, title, description)
VALUES (1, 'Test Ad 1, Test Desc');
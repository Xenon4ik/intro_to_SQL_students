DROP TABLE IF EXISTS users;
CREATE TABLE users (
    User_ID INTEGER PRIMARY KEY,
    First_Name TEXT,
    Last_Name TEXT
);

DROP TABLE IF EXISTS server_logs;
CREATE TABLE server_logs (
    Log_ID INTEGER PRIMARY KEY,
    User_ID INTEGER,
    Session_Start TEXT,
    Session_End TEXT,
);

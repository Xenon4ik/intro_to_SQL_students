# GitHub Setup
# How to submit Solution
# Task desctiptions

## Task 1:
In this task you will write SQL query to extract information from a database table.
imagine you are given a table with the name `users`, with the following schema:
` CREATE TABLE users (
    id integer PRIMARY KEY,
    first_name text,
    last_name text,
    age integer
);`
A view is a virtual table whose contents are defined by a SELECT query.
It does not store data.
It stores the query.

To create a new view, type:
> CREATE VIEW {view_name} AS 
{QUERY};

by executing the previous command, you will have a view object named {view_name} which contains the result of running {QUERY}.

Your task is to make a view called `v_users_age`, which will contain all users whose ages are between 20 and 30 (inclusive), ordered by age in ascending order. Also, your view must drop the attribute "id" of the table `users`, and only include three attributes : first_name, last_name, age.

Checkout the command `ORDER BY` to sort the records according to ages.

You should write your solution inside task1/solution.sql file. Do not change other files in the repo.


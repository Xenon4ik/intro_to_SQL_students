ALTER TABLE server_logs
ADD COLUMN Session_Dur REAL;

UPDATE server_logs
SET Session_Dur = (julianday(Session_End) - julianday(Session_Start)) * 24 * 60;


CREATE VIEW v_users_activity AS
SELECT
    u.id AS User_ID,
    u.first_name AS First_Name,
    u.last_name AS Last_Name,
    COUNT(s.Log_ID) AS Num_Sessions,
    COALESCE(SUM(s.Session_Dur), 0) AS Total_Session_Time
FROM users u
LEFT JOIN server_logs s
    ON u.id = s.User_ID
GROUP BY
    u.id, u.first_name, u.last_name
ORDER BY Total_Session_Time DESC;
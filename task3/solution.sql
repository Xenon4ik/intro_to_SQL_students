ALTER TABLE server_logs
ADD COLUMN Session_Dur REAL;

UPDATE server_logs
SET Session_Dur = (julianday(Session_End) - julianday(Session_Start)) * 24 * 60;

CREATE VIEW v_users_activity AS
SELECT
    u.User_ID AS User_ID,
    u.First_Name AS First_Name,
    u.Last_Name AS Last_Name,
    COUNT(s.Log_ID) AS Num_Sessions,
    COALESCE(SUM(s.Session_Dur), 0) AS Total_Session_Time
FROM users u
LEFT JOIN server_logs s
    ON u.User_ID = s.User_ID
GROUP BY
    u.User_ID, u.First_Name, u.Last_Name
ORDER BY Total_Session_Time DESC;
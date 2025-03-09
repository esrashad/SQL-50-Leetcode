SELECT
    contest_id,
    ROUND(COUNT(r.contest_id) * 1.0 / (SELECT COUNT(user_id)
    FROM Users) * 100, 2) AS percentage
FROM
    Register r
    INNER JOIN
    Users u ON u.user_id = r.user_id
GROUP BY 
    contest_id
ORDER BY 
    percentage DESC, contest_id;

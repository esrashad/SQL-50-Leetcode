SELECT
    s.user_id,
    ROUND(
        CASE 
            WHEN COUNT(c.action) > 0 THEN 
                SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 / COUNT(c.action)
            ELSE 0 
        END, 2) AS confirmation_rate
FROM
    Signups s
    LEFT JOIN
    Confirmations c
    ON 
    s.user_id = c.user_id
GROUP BY 
    s.user_id;

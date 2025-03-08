SELECT x.id
FROM Weather x, Weather y
WHERE x.recordDate = DATEADD(day, 1, y.recordDate) AND x.temperature > y.temperature;

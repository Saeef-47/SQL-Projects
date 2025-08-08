CREATE TABLE Ads (
    adId INTEGER PRIMARY KEY,
    VIEWS INTEGER,
    clicks INTEGER,
    COST NUMERIC(10, 2)
);
INSERT INTO Ads (adId, VIEWS, clicks, COST) VALUES
(1, 1000, 50, 20.5),
(2, 800, 30, 15.2),
(3, 1200, 80, 25.7),
(4, 600, 20, 10.9),
(5, 1500, 120, 40.3);
SELECT 
    adId,
    ROUND((clicks::DECIMAL / VIEWS) * 100, 1) || '%' AS CTR,
    VIEWS,
    clicks,
    COST
FROM Ads
ORDER BY (clicks::DECIMAL / VIEWS) DESC;

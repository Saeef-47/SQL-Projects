# Ad Performance Analysis with CTR Calculation

## Project Overview
This project analyzes advertising data by calculating the Click-Through Rate (CTR) for each ad.  
CTR is a key performance metric that shows the percentage of views that resulted in clicks, helping assess the effectiveness of ads.

## Dataset

### Ads Table

| Column Name | Data Type       | Description                      |
|-------------|-----------------|--------------------------------|
| adId        | INTEGER (Primary Key) | Unique identifier for each ad   |
| views       | INTEGER         | Number of times the ad was viewed |
| clicks      | INTEGER         | Number of times the ad was clicked |
| cost        | NUMERIC(10, 2)  | Cost associated with the ad     |

## SQL Queries

###  Create Ads Table and Insert Data
```sql
CREATE TABLE Ads (
    adId INTEGER PRIMARY KEY,
    views INTEGER,
    clicks INTEGER,
    cost NUMERIC(10, 2)
);

INSERT INTO Ads (adId, views, clicks, cost) VALUES
(1, 1000, 50, 20.5),
(2, 800, 30, 15.2),
(3, 1200, 80, 25.7),
(4, 600, 20, 10.9),
(5, 1500, 120, 40.3);

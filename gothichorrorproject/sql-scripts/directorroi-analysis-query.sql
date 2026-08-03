SELECT 
    director,
    COUNT(*) AS movie_count,
    ROUND(SUM(budget_millions + marketing_budget_millions), 2) AS total_invested,
    ROUND(SUM((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions)), 2) AS total_net_profit,
    ROUND(AVG(((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions)) / (budget_millions + marketing_budget_millions) * 100), 2) AS avg_roi_percentage,
    ROUND(AVG(imdb_rating), 2) AS avg_imdb_rating
FROM gothic_horror_movies
GROUP BY director
ORDER BY total_net_profit DESC;
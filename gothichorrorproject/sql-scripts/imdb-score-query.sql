SELECT 
    gothic_subgenre,
    COUNT(*) AS movie_count,
    ROUND(AVG(budget_millions + marketing_budget_millions), 2) AS avg_budget_total,
    ROUND(AVG((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions)), 2) AS avg_net_profit,
    ROUND(AVG(((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions)) / (budget_millions + marketing_budget_millions) * 100), 2) AS avg_roi_percentage,
    ROUND(AVG(imdb_rating), 1) AS avg_imdb_score
FROM gothic_horror_movies
GROUP BY gothic_subgenre
ORDER BY avg_net_profit DESC;
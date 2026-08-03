SELECT 
    distribution_type,
    COUNT(*) AS total_movies,
    ROUND(AVG(budget_millions + marketing_budget_millions), 2) AS avg_total_investment,
    ROUND(AVG((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions)), 2) AS avg_net_profit,
    ROUND(AVG(((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions)) / (budget_millions + marketing_budget_millions) * 100), 2) AS avg_roi_percentage,
    ROUND(AVG(imdb_rating), 1) AS avg_imdb_rating,
    ROUND(AVG(retention_score), 1) AS avg_retention_score
FROM gothic_horror_movies
GROUP BY distribution_type
ORDER BY distribution_type DESC;
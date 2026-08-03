SELECT 
    title,
    director,
    (budget_millions + marketing_budget_millions) AS total_cost,
    revenue_millions AS box_office,
    secondary_revenue_millions AS secondary_rev,
    ROUND(revenue_millions - (budget_millions + marketing_budget_millions), 2) AS box_office_only_profit,
    ROUND((revenue_millions + secondary_revenue_millions) - (budget_millions + marketing_budget_millions), 2) AS total_net_profit,
    ROUND((secondary_revenue_millions / (revenue_millions + secondary_revenue_millions)) * 100, 2) AS secondary_rev_share_percentage
FROM gothic_horror_movies
WHERE distribution_type = 'Theatrical'
ORDER BY secondary_rev_share_percentage DESC;
SELECT TOP 10
    pr.product_category_name AS categoria,
    COUNT(i.order_item_id) AS quantidade_vendida,
    SUM(i.price) AS faturamento_categoria
FROM itens i
JOIN produtos pr ON i.product_id = pr.product_id
GROUP BY pr.product_category_name
ORDER BY faturamento_categoria DESC;
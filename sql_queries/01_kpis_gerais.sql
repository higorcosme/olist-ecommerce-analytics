SELECT 
    COUNT(DISTINCT p.order_id) AS total_pedidos,
    SUM(i.price) AS faturamento_total,
    SUM(i.price) / COUNT(DISTINCT p.order_id) AS ticket_medio
FROM pedidos p
JOIN itens i ON p.order_id = i.order_id;
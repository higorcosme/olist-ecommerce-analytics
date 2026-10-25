SELECT 
    c.customer_state AS estado,
    COUNT(DISTINCT p.order_id) AS total_pedidos,
    SUM(i.price) AS faturamento_total
FROM pedidos p
JOIN clientes c ON p.customer_id = c.customer_id
JOIN itens i ON p.order_id = i.order_id
GROUP BY c.customer_state
ORDER BY faturamento_total DESC;
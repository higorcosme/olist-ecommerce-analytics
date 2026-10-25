SELECT
    order_status,
    COUNT(order_id) AS total_pedidos
FROM pedidos
GROUP BY order_status
ORDER BY total_pedidos DESC;
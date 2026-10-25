SELECT 
    c.customer_state AS estado,
    AVG(CAST(DATEDIFF(day, p.order_purchase_timestamp, p.order_delivered_customer_date) AS FLOAT)) AS media_dias_entrega
FROM pedidos AS p
JOIN clientes AS c ON p.customer_id = c.customer_id
WHERE p.order_status = 'delivered' 
  AND p.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY media_dias_entrega ASC;
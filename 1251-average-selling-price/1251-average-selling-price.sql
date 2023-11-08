select t2.product_id ,IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) AS average_price
    
    from
    (
        (select product_id , purchase_date, units 
            from UnitsSold) 
        as t1
    right join
        (select * from Prices) 
        as t2
    on (t1.purchase_date between t2.start_date and t2.end_date)
    and t1.product_id = t2.product_id
    )
    group by product_id
    

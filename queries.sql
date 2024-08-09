-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select
productname,
categoryname
from product as pr
left join category as ca
    ON pr.CategoryId = ca.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select
od.id,
companyname
FROM 'order' as od
join shipper as sh
    ON od.ShipVia = sh.id
where od.orderdate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select
productname,
quantity
from orderDetail as od
left join product as pr
    ON od.ProductId = pr.id
where od.orderid = '10251'
group by productname; 

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
ord.orderid,
ct.companyname,
em.lastname
from 'order' as od
join customer as ct
    ON od.CustomerId = ct.id
join employee as em
    ON od.EmployeeId = em.Id
join orderdetail as ord
    ON od.Id = ord.OrderId
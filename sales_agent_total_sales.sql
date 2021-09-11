select e.FirstName, e.LastName, sum(i.Total) as TotalSales
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on c.CustomerId = i.InvoiceId
group by e.FirstName, e.LastName

-- 19.top_2009_agent.sql: Which sales agent made the most in sales in 2009?
select e.FirstName + ' ' + e.LastName as [Rep], 
	SUM(i.Total) as [TotalSales], YEAR(i.InvoiceDate) [Year]
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on c.CustomerId = i.CustomerId
group by SupportRepId, e.FirstName, e.LastName, YEAR(i.InvoiceDate)
-- I was joining c.CustomerId = i.Invoice

SELECT
	Employee.FirstName + ' ' + Employee.LastName as [Sales Rep],
	SUM(Invoice.Total) as [Total Sales], YEAR(Invoice.InvoiceDate)
FROM Invoice
JOIN Customer
	ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee 
	ON Employee.EmployeeId = Customer.SupportRepId
WHERE YEAR(Invoice.InvoiceDate) = '2009'
GROUP BY SupportRepId, Employee.LastName, Employee.FirstName, YEAR(Invoice.InvoiceDate)
ORDER BY [Total Sales] Desc

--21. `sales_agent_customer_count.sql`: Provide a query that shows the count of customers assigned to each sales agent.
select e.FirstName + ' ' + e.LastName as [SalesRep], 
	count(c.CustomerId) CustomerCount
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
group by e.FirstName, e.LastName
order by CustomerCount desc
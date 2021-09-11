--22. Provide a query that shows the total sales per country.
select BillingCountry, sum(Total) TotalSales
from Invoice
group by BillingCountry
order by TotalSales desc

--23. Which country's customers spent the most? ... USA? $523.06

--24. Provide a query that shows the most purchased track of 2013.
select top 1 *
from InvoiceLine
join Invoice on InvoiceLine.InvoiceId = Invoice.InvoiceId
where YEAR(InvoiceDate) = '2013'

SELECT TOP 1
	InvoiceLine.TrackId,
	Track.Name,
	COUNT(*) as [Total Purchases]
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice 
	On Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE YEAR(Invoice.InvoiceDate) = '2013'
GROUP BY Track.Name
ORDER BY [Total Purchases] DESC 
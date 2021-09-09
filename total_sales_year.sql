--What are the respective total sales for each of those years?
select year(InvoiceDate) [Year], SUM(Total) [Year]
from Invoice
where year(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)
-- group by shows you which columns are NOT aggregate cols in a selection
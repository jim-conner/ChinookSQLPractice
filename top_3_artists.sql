--26. Provide a query that shows the top 3 best selling artists.
select top 3 *
from Artist

--27. `top_media_type.sql`: Provide a query that shows the most purchased Media Type.
select top 1 m.Name, sum(Total) [Total]
from MediaType m
join Track t on t.MediaTypeId = m.MediaTypeId
join InvoiceLine il on il.TrackId = il.TrackId
join Invoice i on i.InvoiceId = il.InvoiceId
group by m.Name
order by [Total] desc

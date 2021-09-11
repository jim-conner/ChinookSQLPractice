-- Provide a query that shows the top 5 most purchased songs.
select top 5 t.Name, sum(Quantity) TrackCount
from InvoiceLine i
join Track t on t.TrackId = i.TrackId
group by t.Name
order by TrackCount desc

-- only one Quanity per InvoiceLine
select distinct Quantity
from InvoiceLine



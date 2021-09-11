--16.	tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
--use a temp table tk.name, 
select t.Name, g.Name, m.Name
from Track t
join Genre g on t.GenreId = g.GenreId
join MediaType m on t.MediaTypeId = m.MediaTypeId

--17. invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.
select InvoiceId, Count(*) as LineItemCount
from InvoiceLine
group by InvoiceId


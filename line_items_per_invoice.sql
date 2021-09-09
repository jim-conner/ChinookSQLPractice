--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
select InvoiceId, count(InvoiceLineId) LineItemCount
from InvoiceLine
group by InvoiceId

--#12 line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
select il.*, Name
from InvoiceLine il
	join Track t on il.TrackId = t.TrackId

--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
select InvoiceId, count(InvoiceLineId) as #ofLineItems
from InvoiceLine
where InvoiceId = 37
group by InvoiceId

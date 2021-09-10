-- #8 How many Invoices were there in 2009 and 2011?

--  IF(cond, val_t, val_f) as statement controlflow
-- but CASE as an expression/function that returns a value
select year(InvoiceDate) as date, count(*) as count
from Invoice
	where year(InvoiceDate) in (2009, 2011)
	group by year(InvoiceDate)

-- with case when
select
	sum (case when year(InvoiceDate) = '2009' 
		then 1 else 0 end
		)as Invoices2009
	,sum(case when year(InvoiceDate) = '2011'
		then 1 else 0 end
		) as Invoices2011
from Invoice

/*false start
select count(InvoiceId) as InvoiceCount2009
from Invoice i
where year(i.InvoiceDate) = 2009
*/
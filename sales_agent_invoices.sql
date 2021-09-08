--invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
select InvoiceId, e.FirstName, e.LastName, e.EmployeeId
from Invoice i
	join Customer c 
		on i.CustomerId = c.CustomerId
	join Employee e
		on c.SupportRepId = e.EmployeeId

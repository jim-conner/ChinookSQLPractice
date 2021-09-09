--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
Select i.total, c.FirstName, c.LastName, c.Country, e.FirstName as AgentName
from Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
	join Employee e
		on c.SupportRepId = e.EmployeeId

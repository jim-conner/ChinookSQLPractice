select e.FirstName, e.LastName, sum(i.Total)
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on c.CustomerId = i.InvoiceId
group by e.EmployeeId
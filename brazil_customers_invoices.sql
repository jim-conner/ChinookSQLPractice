--3. `brazil_customers_invoices.sql`: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select FirstName, LastName, InvoiceId, InvoiceDate, BillingAddress
from Invoice i
join Customer c on i.CustomerId = c.CustomerId
where BillingCountry = 'Brazil'

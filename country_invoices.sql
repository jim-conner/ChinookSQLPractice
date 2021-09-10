--14. Provide a query that shows the # of invoices per country.
select invoice.BillingCountry, count(*) as InvoicesPerCountry
from Invoice
group by BillingCountry

--15. Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.
select p.Name, count(*) as NumOfTracks
from Playlist p
join PlaylistTrack ptrk on p.PlaylistId = ptrk.PlaylistId
group by Name
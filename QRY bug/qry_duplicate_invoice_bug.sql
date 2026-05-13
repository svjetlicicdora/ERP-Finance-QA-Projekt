

SELECT InvoiceNumber, COUNT(*) AS DuplicateCount
FROM dbo.Invoices
GROUP BY InvoiceNumber
HAVING COUNT(*) > 1;
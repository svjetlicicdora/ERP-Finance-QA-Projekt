CREATE PROCEDURE usp_GetInvalidInvoices
AS
BEGIN

    SELECT 
        InvoiceID,
        InvoiceNumber,
        TotalAmount,
        VATAmount,
        InvoiceDate,
        DueDate
    FROM dbo.Invoices
    WHERE 
        TotalAmount < 0
        OR DueDate < InvoiceDate
        OR InvoiceNumber IN (
            SELECT InvoiceNumber
            FROM dbo.Invoices
            GROUP BY InvoiceNumber
            HAVING COUNT(*) > 1
        );

END;
GO

EXEC usp_GetInvalidInvoices;
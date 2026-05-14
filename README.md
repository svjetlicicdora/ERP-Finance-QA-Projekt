# ERP Finance QA Project

## Opis projekta

Ovaj projekt predstavlja simulaciju testiranja ERP financijsko-računovodstvenog modula razvijenu kao portfolio projekt za juniorsku ERP QA poziciju.

Projekt je fokusiran na:
- SQL bazu podataka
- ERP poslovnu logiku
- QA testiranje i validaciju podataka
- pronalaženje grešaka kroz SQL upite
- dokumentaciju bugova i testnih slučajeva

Cilj projekta bio je simulirati stvarni ERP sustav za upravljanje računima i kupcima te demonstrirati osnovne QA procese i analizu podataka.

---

## Korištene tehnologije

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- Excel

---

## Struktura baze podataka

Projekt koristi tri glavne tablice:

### Customers
Sadrži podatke o kupcima:
- CustomerID
- Name
- OIB
- City

### Invoices
Sadrži podatke o računima:
- InvoiceID
- InvoiceNumber
- CustomerID
- InvoiceDate
- TotalAmount
- VATAmount
- DueDate

### InvoiceItems
Sadrži stavke računa:
- ItemID
- InvoiceID
- ProductName
- Quantity
- Price

---

## QA scenariji i validacije

Projekt uključuje različite QA provjere i simulirane poslovne greške:

- Dupli brojevi računa
- Negativni iznosi računa
- Neispravan datum dospijeća
- Kupci bez OIB-a
- Negativne količine proizvoda
- Negativne cijene proizvoda

QA provjere izvršene su korištenjem SQL upita.

---

## Stored Procedure

Projekt uključuje stored proceduru:

### usp_GetInvalidInvoices

Procedura automatski pronalazi:
- duple invoice brojeve
- negativne invoice iznose
- neispravne datume dospijeća

---

## Dokumentacija

Projekt sadrži:

### BugReports.xlsx
Dokument s evidentiranim bugovima, prioritetima i opisima problema.

### TestCases.xlsx
Dokument s definiranim testnim slučajevima, koracima testiranja i očekivanim rezultatima.

---

## Primjeri QA provjera

### Pronalaženje duplih brojeva računa

```sql
SELECT InvoiceNumber, COUNT(*) AS DuplicateCount
FROM dbo.Invoices
GROUP BY InvoiceNumber
HAVING COUNT(*) > 1;
```

### Pronalaženje negativnih iznosa računa

```sql
SELECT *
FROM dbo.Invoices
WHERE TotalAmount < 0;
```

### Pronalaženje kupaca bez OIB-a

```sql
SELECT *
FROM dbo.Customers
WHERE OIB IS NULL;
```

---

## Cilj projekta

Cilj projekta bio je demonstrirati:
- razumijevanje ERP poslovnih procesa
- rad s relacijskim bazama podataka
- SQL znanje
- QA pristup testiranju
- analitičko razmišljanje
- dokumentiranje bugova i testnih scenarija

---

## Autor

Dora Svjetličić

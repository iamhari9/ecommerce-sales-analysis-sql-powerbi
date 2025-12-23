sql

-- Total revenue
select
	SUM(Quantity*UnitPrice) as TotalSales
from dbo.OnlineRetail_clean

-- Top products by revenue
select
	Description,
	SUM(TotalPrice) as TotalSales
from dbo.OnlineRetail_clean
group by Description
order by TotalSales desc

-- Monthly revenue trend
select
	YEAR(InvoiceDate) as year,
	MONTH(InvoiceDate) as month,
	SUM(TotalPrice) as TotalSales
from dbo.OnlineRetail_clean
group by YEAR(InvoiceDate), MONTH(InvoiceDate)
order by YEAR(InvoiceDate), MONTH(InvoiceDate)

-- RFM analysis
with OnlineRetail_RFM as(
select
	CustomerID,
	DATEDIFF(DAY, MAX(InvoiceDate), '2011-12-31') as Recency,
	COUNT(distinct InvoiceNo) as Frequency,
	SUM(TotalPrice) as Monetary,
	PERCENT_RANK() over (order by COUNT(distinct InvoiceNo)) as F_Rank,
	PERCENT_RANK() over (order by SUM(TotalPrice)) as M_Rank
from dbo.OnlineRetail_clean
group by CustomerID
),
RankRFM as(
select
	CustomerID,
	case
		when Recency between 0 and 90 then 3
		when Recency between 91 and 180 then 2
	else 1
	end as Recency_Rank,
	case
		when F_Rank between 0.8 and 1 then 3
		when F_Rank between 0.5 and 0.8 then 2
	else 1
	end as Frequency_Rank,
	case
		when M_Rank between 0.8 and 1 then 3
		when M_Rank between 0.5 and 0.8 then 2
	else 1
	end as Monetary_Rank
from dbo.OnlineRetail_RFM
)
select
	CustomerID,
	CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) as RFM,
	case
		when CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) = 333 then 'VIP'
		when CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) like '3%%' then 'Recent Customer'
		when CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) like '%3%' then 'Frequent Customer'
		when CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) like '%%3' then 'High Spending Customer'
		when CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) like '2%%' then 'At risk'
		when CONCAT(Recency_Rank, Frequency_Rank, Monetary_Rank) like '1%%' then 'Lost'
	else '0'
	end as 'Customer Classification'
from RankRFM
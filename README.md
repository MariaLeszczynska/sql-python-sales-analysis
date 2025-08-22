# Sales Analytics with SQL (and Python)

This project explores sales, customer, and employee performance using SQL queries on the Northwind dataset.

---

## Notes
- SQL: Querying, aggregations, joins, window functions  
- Python: numpy, pandas, matplotlib, networkx  
- Dataset: Northwind sample database

---

## Objective  
I wanted to extract insights from sales data to answer some business questions:  
- Which products and categories drive the most revenue?  
- Who are the top customers and employees?  
- How do monthly orders and revenue trend over time?  
- Which products are frequently purchased together (market basket analysis)?  

---

## Features  
- SQL-based analysis with queries stored in `/sql/`  
- Python integration for exporting results and building visualizations  
- Key Performance Indicators covered:  
  - Product performance (units sold, revenue, share)  
  - Customer and employee contributions  
  - Monthly sales trends  
  - Product associations (Apriori-style market basket analysis)  
- Data visualization with matplotlib and networkx  

---

## Key insights (with visuals) 

### Product performance  
Top 10 products by units sold vs revenue:  
<p align="center">  
  <img src="images/image1.png" width="450"/>  
  <img src="images/image2.png" width="450"/>  
</p>  

Revenue share of top 10 products vs others:  
<p align="center">  
  <img src="images/image3.png" width="500"/>  
</p>  

The top 10 products together generate about 44% of total revenue, while the remaining products account for 56%. Revenue is therefore less concentrated than unit sales, although certain products like Cote de Blaye stand out, no single product dominates overall sales.
---

### Trends over time  
Monthly orders and revenue evolution:  
<p align="center">  
  <img src="images/image4.png" width="600"/>  
</p>  

Revenue increased from 27,862 in the first recorded month to 123,799 in April 1998 - a growth of 344%. This strong upward trend shows both a rise in the number of orders and higher value transactions.
---

### Category analysis  
Revenue contribution by product category:  
<p align="center">  
  <img src="images/image5.png" width="500"/>  
  <img src="images/image6.png" width="350"/>  
</p>  

Beverages and Dairy Products are the top revenue drivers, together making up over 40% of total sales. In contrast, categories like Grains/Cereals or Produce contribute the least, which might mean reliance on the top two categories.
---

### Customers  
Top 10 customers by revenue and their revenue share:  
<p align="center">  
  <img src="images/image7.png" width="450"/>  
  <img src="images/image8.png" width="450"/>  
</p>  

Although there are 91 customers in total, the top 10 customers contribute ~45% of total revenue, showing that sales are concentrated among a small but very valuable customer group.
---

### Employees  
Employee performance by revenue and orders:  
<p align="center">  
  <img src="images/image9.png" width="500"/>  
  <img src="images/image10.png" width="450"/>  
</p>  

Average order value per employee (with median benchmark):  
<p align="center">  
  <img src="images/image11.png" width="600"/>  
</p>  

---

### Market Basket Analysis  
Product associations revealed via Apriori-style analysis:  

- **Network of top product pairs**  
<p align="center">  
  <img src="images/image12.png" width="500"/>  
</p>  

- **Lift heatmap**  
<p align="center">  
  <img src="images/image13.png" width="500"/>  
</p>  

- **Support vs Lift (bubble plot)**  
<p align="center">  
  <img src="images/image14.png" width="500"/>  
</p>  

We've identified product pairs that frequently co-occur in customer orders. For example, “Sir Rodney’s Scones” and “Sirop d’érable” show the strongest association (high lift ≈ 7), meaning these two products are bought together far more often than expected by chance. These results highlight opportunities for cross-selling and bundling strategies. Retailers could promote these pairs together (for example combo deals, product placement) to increase sales.


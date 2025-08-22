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

---

### Trends over time  
Monthly orders and revenue evolution:  
<p align="center">  
  <img src="images/image4.png" width="600"/>  
</p>  

---

### Category analysis  
Revenue contribution by product category:  
<p align="center">  
  <img src="images/image5.png" width="500"/>  
  <img src="images/image6.png" width="350"/>  
</p>  

---

### Customers  
Top 10 customers by revenue and their revenue share:  
<p align="center">  
  <img src="images/image7.png" width="450"/>  
  <img src="images/image8.png" width="450"/>  
</p>  

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

 

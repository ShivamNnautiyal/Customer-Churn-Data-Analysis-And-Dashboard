# creating the data base 
create database telco;
use telco;

# make a table for our dataset
CREATE TABLE telco_customers (
    customerID VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges FLOAT,
    TotalCharges VARCHAR(20),
    Churn VARCHAR(10)
);
# loading the data
LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\archive (4)'
INTO TABLE telco_customers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
# all table data 
select * from telco_customers;

# how many customer churned 
select Churn , count(*) as no_of_customer
from telco_customers
group by Churn;

# Average monthly charges by churn status
select Churn , avg(MonthlyCharges) as Avg_monthlyCharges
from telco.telco_customers
group by Churn;

# Churn rate by contract type
select Contract , count(*) as total,
	   SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) as Churned,
       round(SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END)*100/count(*),2) as Churn_Rate
from telco_customers
group by Contract;

# Churn rate by seniorCitizen

select SeniorCitizen , count(*) as total,
	   SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) as Churned,
       round(SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END)*100/count(*),2) as Churn_Rate
from telco_customers
group by SeniorCitizen;

# show variables 
SHOW VARIABLES WHERE Variable_name = 'hostname';


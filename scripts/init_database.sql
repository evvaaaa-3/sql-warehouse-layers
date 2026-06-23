/* Create database and Schemas

Script Purpose:
This script creates a new databse named DataWarehouse after checking if it already exits in your system or not. If it exists it drops the database and recreates it. Additionally, the script stes up three schemas within the database: 'bronze'
,'silver', and 'gold'.


NOTE: DROPPING AN EXISTING DATABASE WILL PERMANENTLY DELETE ALL THE DATA WITHIN IT

*/

USE master;
GO


--Drop Database if it exists already

IF EXISTS (SELECT 1 FROM sys.databases WHERE name="DataWarehouse")
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;

END;
GO

--Create database

create database DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;

CREATE SCHEMA silver;

GO

CREATE SCHEMA gold;

GO 


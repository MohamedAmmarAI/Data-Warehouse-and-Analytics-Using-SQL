/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

use DataWarhouse;

if OBJECT_ID('bronze.cust_info','u') is not null
Begin
  drop table bronze.cust_info;
end;

Go

create table bronze.crm_cust_info(
     cst_id INT,
	 cst_key NVARCHAR(50),
	 cst_firstname NVARCHAR(50),
	 cst_lastname NVARCHAR(50),
	 cst_marital_status NVARCHAR(50),
	 cst_gndr NVARCHAR(50),
	 cst_create_date DATE						 
);
Go

if OBJECT_ID('bronze.crm_prd_info','u') is not null
begin 
      DROP Table bronze.crm_prd_info;
end;
Go

create table bronze.crm_prd_info(
  prd_id int,
  prd_key NVARCHAR(50),
  prd_nm NVARCHAR(50),
  prd_cost INT,
  prd_line NVARCHAR(50),
  prd_start_dt DATE,
  prd_end_dt DATE
);
GO

IF OBJECT_ID('bronze.crm_sales_details','u') is not null 
begin
     drop table bronze.crm_sales_details;
end;
GO

create table bronze.crm_sales_details (
   sls_ord_num NVARCHAR(50),
   sls_prd_key NVARCHAR(50),
   sls_cust_id INT,
   sls_order_dt INT,
   sls_ship_dt INT,
   sls_due_dt INT,
   sls_sales INT,
   sls_quantity INT,
   sls_price INT
);
GO

if OBJECT_ID('bronze.erp_loc_a101','u') is not null 
begin
    drop table bronze.erp_loc_a101;
end;
Go

create table bronze.erp_loc_a101(
 CID nvarchar(50),
 CNTRY NVARCHAR(50)
);
Go

if OBJECT_ID('bronze.erp_cust_az12','u') is not null
begin
  drop table bronze.erp_cust_az12;
end;
Go

create table bronze.erp_cust_az12(
   CID NVARCHAR(50),
   BDATE DATE,
   GEN NVARCHAR(50)
);
Go

if OBJECT_ID('bronze.erp_px_cat_g1v2','u') is not null
begin
      drop table bronze.erp_px_cat_g1v2;
end;
Go

create table bronze.erp_px_cat_g1v2(
    ID NVARCHAR(50),
	CAT NVARCHAR(50),
	SUBCAT NVARCHAR(50),
	MAINTENANCE NVARCHAR(50)
);
GO




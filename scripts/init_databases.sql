/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

use master;
GO

-- Drop and recreate the 'DataWarehouse' database
if exists(select 1 from sys.databases where name='DataWarhouse')
Begin
      Alter database Datawarehouse set single_user with rollback immediate
	  drop database Datawarehouse
End;
Go


-- Create the 'DataWarehouse' database
create database DataWarhouse;
Go

use DataWarhouse;
Go

-- Create Schemas

create schema Bronze
Go

create schema Silver
Go

create schema Gold 
Go






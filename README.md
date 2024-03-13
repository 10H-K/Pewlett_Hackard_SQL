# Designing Tables to Store CSV File Data, Importing CSV Files Into an SQL Database, and Analyzing The Data to Answer Questions 

## Overview ##

As a new data engineer at Pewlett Hackard (a fictional company), the objective of this project is to conduct research on individuals employed by the company during the 1980s and 1990s. The only remaining records from that period are stored in six CSV files. Therefore, this project involves designing tables to accommodate the data from these CSV files, importing the files into a SQL database, and subsequently analyzing the data. This process encompasses data modeling, data engineering, and data analysis, respectively.

## Data Modeling ##

#### Inspection of CSV Files & Sketching an Entity Relationship Diagram of the Tables Using QuickDBD ####

<img width="1384" alt="pewlett_hackard_erd" src="https://github.com/10H-K/Pewlett_Hackard_SQL/assets/152930492/17c16aaa-472e-4dc7-8cfe-e3db8f8242fc">

## Data Engineering ##
  1. Using the information from QuickDBD to create a table schema for each of the six CSV files
     - specifying the data types, primary keys, foreign keys, and other constraints
     - creatng the tables in the correct order so that the foreign keys are appropriately handled
  2. Importing each CSV file into its corresponding SQL table in PostgreSQL

## Data Analysis ##
  1. Listing the employee number, last name, first name, sex, and salary of each employee
  2. Listing the first name, last name, and hire date for the employees who were hired in 1986
  3. Listing the manager of each department along with their department number, department name, employee number, last name, and first name
  4. Listing the department number for each employee along with that employee’s employee number, last name, first name, and department name
  5. Listing the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
  6. Listing each employee in the Sales department, including their employee number, last name, and first name
  7. Listing each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
  8. Listing the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

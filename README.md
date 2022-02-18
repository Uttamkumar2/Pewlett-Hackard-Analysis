# Pewlett Hackard Analysis
Performing analysis of company employee data by utilizing the dynamic ability of the relational database PostgresSQL to transform and query data.

## Resources

* [QuickDBD](https://www.quickdatabasediagrams.com), [Pgadmin 6.1](https://www.pgadmin.org), [PostgreSQL 12.9](https://www.postgresql.org)

## Overview

The purpose of this project is to perform analysis on a large-scale of employee data for a company with over 300, 000 employees. The company Pewlett Hackard is reviewing staffing metrics, determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program, lastly to find the postition need to filled in future.

## Analysis

* To determin the list of employee retiring retitreing we need to import data saved in CSV file to relatitional database table, Once that load we need to stablish relations between these tables like 
  *   Employees, Departments, Department Manager, Department Employee, Salary , Title    
 
* Below is the ERD (Entity Relationship Diagram) used to visualize the relationship between the data sources and the structure of the company's employee plan to facilitate the analysis. 

  ![QuickDBD-export](https://user-images.githubusercontent.com/91766890/154630925-73ea9c42-b6d0-4302-a0e7-2881339b9f56.png)
  
## Result
  
  ### Future Job Openings
    
  After conducting the analysis it was found that there is currently a large number of employees of retirement age holding senior titles with around 64% of the staff 
  to retire. Please reference the Unique Titles table below.
        
   ![retirering_titles](https://user-images.githubusercontent.com/91766890/154632762-8eb1be5e-c3dc-4e38-97d1-3f19e2f1367e.png)

  ### Mentorship Candidates
  Below is the list of candidates that can qualify to become members of the mentorship program, they can be referenced as "senior" employees amongst the general staff. 
    
   ![mentorship](https://user-images.githubusercontent.com/91766890/154633259-6124a5c6-782c-42ce-a933-a78ff93b1b40.png)

## Summary
Based on the findings of my analysis Pewlett Hackard is potentially facing over 90,000 vacant positions company wide. Taking into consideration the low amount of employees who are eligible for mentorship.

# Employee Database With SQL
All that remains of an employee DB are 6 CSV files. The purpose of this project is to design tables, import the CSV files into a SQL database, and perform an analysis on the data.

## Summary

- Created an ERD diagram relating to the 6 CSV files. Included data types, primary keys, and foreign keys.

  ![ERD](https://github.com/VL14/Employee_Database_with_SQL/blob/master/Images/ERD_diagram.JPG)

- Imported each CSV file into postgreSQL for analysis. Joined and filtered data to answer company questions.

- Imported the SQL database in Python to visualize data with Pandas:

  - Created a histogram of employee salary ranges
  
  - Created a bar chart of average salary by title
  
  
  
  ![Chart](https://github.com/VL14/Employee_Database_with_SQL/blob/master/Images/Chart_Salary_By_Title.JPG)
  
  
Conclusion - the dataset was fake. In checking my own employee number, the name associated with it was April Fool's Day :)


## Files

[ERD Image](/Images/ERD_diagram.jpg)

[Table schema file](schema2.sql)

[Query file](query.sql)

[Jupyter Notebook](data_analysis.ipynb)

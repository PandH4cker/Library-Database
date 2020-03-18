# Library Database 
---
## Authors: Raphael Dray
---
> Database with PL-SQL functions/procedures/triggers.
> Oracle DB has been used with Oracle SQL Developer.
---
## Last Release Version: 0.1.7
### Changelog:
> #### Version 0.1.7
> Adding a trigger to prevent updating membre column on emprunts table.
---
> #### Version 0.1.6
> Adding a trigger to handle invalid final adhesion date.
---
> #### Version 0.1.5
> Adding a function to track the number of book not returned.
---
> #### Version 0.1.4
> Adding a procedure to handle the insertion of one borrow based on sysdate for the creation date and respectively his detail in detailsemprunts table.
> Adding a sequence to handle the next value for the insertion of the borrow in the table emprunts.
---
> #### Version 0.1.3
> Adding a function to track members activity.
---
> #### Version 0.1.2
> Adding a function to retrieve the limit date that for which a member could still borrow a book.
---
> #### Version 0.1.1
> Adding a new virtual column FinAdhesion in Membres table.
---
> #### Version 0.1.0
> Adding PL/SQL Procedure to update exemplaires table.
---
> #### Version 0.0.9
> Adding T-SQL Script to update Exemplaires table.
---
> #### Version 0.0.8
> Inserted new values in DetailsEmprunts table based on sysdate.
---
> #### Version 0.0.7
> Adding T-SQL Script to change the etat value in emprunts table according if in the detailsemprunts the book has been returned or not.
---
> #### Version 0.0.6
> Adding constraint check on etat in emprunts table.
---
> #### Version 0.0.5
> Adding a new column ETAT in Emprunts table and added default value EC in it.
---
> #### Version 0.0.4
> Inserted values in the tables.
---
> #### Version 0.0.3
> Adding of Trigger for the sequence of Membres table.
---
> #### Version 0.0.2
> Adding of Sequence for autoincrement Membres table.
---
> #### Version 0.0.1
> Adding of SQL scripts for creating the tables.
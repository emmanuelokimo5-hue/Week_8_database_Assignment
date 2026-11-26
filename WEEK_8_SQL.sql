
-- =====================================================
-- WEEK 8 DATABASE ASSIGNMENT
-- Topic: MySQL Database Backup Operations
-- Database: sales
-- File: answer.sql
-- =====================================================


-- =====================================================
-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
-- =====================================================

-- Command to back up the complete sales database:
-- Run this command in Git Bash, Command Prompt, or Terminal.

-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump is a MySQL utility used to export database information.
-- -u root specifies the MySQL username.
-- -p asks the user to enter the database password.
-- sales specifies the database to back up.
-- > sales_backup.sql saves the backup in an SQL file.

-- Importance:
-- Regular backups help prevent data loss caused by accidental
-- deletion, hardware failure, software errors, or system crashes.
-- They also make it possible to restore the database when needed.


-- =====================================================
-- QUESTION 2: BACKING UP ALL DATABASES
-- =====================================================

-- Command to back up all databases on the MySQL server:
-- Run this command in Git Bash, Command Prompt, or Terminal.

-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- mysqldump exports database structures and data.
-- -u root specifies the MySQL username.
-- -p prompts for the MySQL password.
-- --all-databases exports all databases on the server.
-- > all_databases_backup.sql saves everything in one SQL file.

-- Importance:
-- Backing up all databases before migration ensures that
-- important information is not lost during the transfer.
-- It also helps restore databases on the new server and
-- supports business continuity.


-- =====================================================
-- QUESTION 3: DATA-ONLY DATABASE BACKUP
-- =====================================================

-- Command to back up only the data in the sales database:
-- Run this command in Git Bash, Command Prompt, or Terminal.

-- mysqldump -u root -p --no-create-info sales > sales_data_backup.sql

-- Explanation:
-- --no-create-info exports the table data without CREATE TABLE
-- statements.
-- sales specifies the database to export.
-- sales_data_backup.sql is the output backup file.

-- Importance:
-- A data-only backup is useful when the database tables
-- already exist and you only need to transfer or restore
-- the records without recreating the table structures.


-- =====================================================
-- END OF WEEK 8 DATABASE BACKUP ASSIGNMENT
-- =====================================================

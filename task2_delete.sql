-- Task 2: Create and Delete PDB
ALTER SESSION SET CONTAINER = CDB$ROOT;
SHOW CON_NAME;

CREATE PLUGGABLE DATABASE ka_to_delete_pdb_29080
ADMIN USER pdbadmin IDENTIFIED BY 1234
FILE_NAME_CONVERT = ('D:\PL-SQL\ORADATA\XE\pdbseed\',
                     'D:\PL-SQL\ORADATA\XE\ka_to_delete_pdb_29080\');

ALTER PLUGGABLE DATABASE ka_to_delete_pdb_29080 OPEN;
SHOW PDBS;

ALTER PLUGGABLE DATABASE ka_to_delete_pdb_29080 CLOSE IMMEDIATE;

-- Check directory paths first
SELECT directory_name, directory_path FROM dba_directories;

-- Use the path that exists on your system from above query
ALTER PLUGGABLE DATABASE ka_to_delete_pdb_29080 
UNPLUG INTO 'D:\PL-SQL\ORADATA\XE\ka_to_delete_pdb_29080.xml';

DROP PLUGGABLE DATABASE ka_to_delete_pdb_29080 INCLUDING DATAFILES;
SHOW PDBS;

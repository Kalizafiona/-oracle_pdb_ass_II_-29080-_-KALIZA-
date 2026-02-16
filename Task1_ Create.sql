-- ============================================
-- TASK 1: CREATE MAIN PLUGGABLE DATABASE
-- Student: KALIZA Fiona
-- Student ID: 29080
-- PDB Name: ka_pdb_29080
-- Username: kaliza_plsqlauca_29080
-- ============================================

-- Step 1: Verify you are in the Root Container
ALTER SESSION SET CONTAINER = CDB$ROOT;
SHOW CON_NAME;

-- Step 2: Display all existing PDBs
SHOW PDBS;

-- Step 3: Display datafile paths to identify the base path
SELECT CON_ID, TABLESPACE_NAME, FILE_NAME 
FROM CDB_DATA_FILES 
WHERE CON_ID = 3;

-- Step 4: Create the new Pluggable Database
CREATE PLUGGABLE DATABASE ka_pdb_29080
ADMIN USER pdbadmin IDENTIFIED BY 1234
FILE_NAME_CONVERT = ('D:\PL-SQL\ORADATA\XE\pdbseed\',
                     'D:\PL-SQL\ORADATA\XE\ka_pdb_29080\');

-- Step 5: Verify PDB creation status
SELECT pdb_name, status FROM cdb_pdbs;

-- Step 6: Check the open mode of all PDBs
SELECT name, open_mode FROM v$pdbs;

-- Step 7: Open the newly created PDB
ALTER PLUGGABLE DATABASE ka_pdb_29080 OPEN;

-- Step 8: Verify the PDB is now open
SELECT name, open_mode FROM v$pdbs;

-- Step 9: Save the state for automatic opening on restart
ALTER PLUGGABLE DATABASE ka_pdb_29080 SAVE STATE;

-- Step 10: Switch session to the new PDB
ALTER SESSION SET CONTAINER = ka_pdb_29080;

-- Step 11: Verify you are in the correct PDB
SHOW CON_NAME;

-- Step 12: Create the user for class work
CREATE USER kaliza_plsqlauca_29080 IDENTIFIED BY 1234;

-- Step 13: Grant all privileges to the user
GRANT ALL PRIVILEGES TO kaliza_plsqlauca_29080;

-- Step 14: Verify user creation
SELECT username FROM dba_users WHERE username = 'kaliza_PLSQLAUCA_29080';

-- Step 15: Switch back to root and display all PDBs
ALTER SESSION SET CONTAINER = CDB$ROOT;
SHOW PDBS;

-- ============================================
-- TASK 1 COMPLETED SUCCESSFULLY
-- ============================================

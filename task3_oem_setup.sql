TASK 3: Configure Oracle Enterprise Manager (OEM)
Step 1: Ensure You're in Root Container
sqlALTER SESSION SET CONTAINER = CDB$ROOT;
Step 2: Check Current Ports
sqlSELECT DBMS_XDB_CONFIG.GETHTTPPORT() AS HTTP_PORT,
       DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT 
FROM dual;
Step 3: Set HTTP/HTTPS Ports (if they're 0)
sqlBEGIN
  DBMS_XDB_CONFIG.SETHTTPPORT(8080);
  DBMS_XDB_CONFIG.SETHTTPSPORT(8443);
END;
/
Step 4: Verify Ports
sqlSELECT DBMS_XDB_CONFIG.GETHTTPPORT() AS HTTP_PORT,
       DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT 
FROM dual;
Should show 8080 and 8443.
Step 5: Restart Database
sqlSHUTDOWN IMMEDIATE;
STARTUP;
Step 6: Access OEM in Browser
Open your web browser and go to:
https://localhost:8443/em

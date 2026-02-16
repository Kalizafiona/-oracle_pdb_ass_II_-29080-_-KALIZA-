# Oracle Database PDB Management - Assignment II

## 📋 My Information

- **Name: KALIZA Fiona
- **Student ID: 29080
- **Course:** Database Development with PL/SQL (INSY 8311)
- **Institution: Adventist University of Central Africa (AUCA)
- **Date:** February 2026

---

## 🎯 Assignment Overview

This assignment demonstrates Oracle Database administration skills including creating and managing Pluggable Databases (PDBs) and configuring Oracle Enterprise Manager (OEM).

---

## 🗂️ Repository Structure

```
oracle-pdb-assignment-27903-Delphin-Sano-Nshuti/
│
├── README.md                     # This file
├── queries/                      # SQL scripts
│   ├── task1_create_pdb.sql
│   ├── task2_delete_pdb.sql
│   └── task3_oem_setup.sql
│
└── screenshots/                  # Visual documentation
    ├── task1_creation/          # Task 1 screenshots
    ├── task2_deletion/          # Task 2 screenshots
    └── task3_oem/               # Task 3 screenshots
```

---

## ✅ Tasks Completed

### Task 1: Create Main Pluggable Database (2 points)

Created permanent PDB for class work:
- **PDB Name:** `ka_pdb_29080`
- **Username:** `kaliza_plsqlauca_29080`
- **Password:** `1234`
- **Location:** `D:\PL-SQL\ORADATA\XE\ka_pdb_29080\`

**Key Steps:**
1. Connected as SYSDBA to root container
2. Created PDB from PDB$SEED template
3. Opened PDB and saved state
4. Created user with full privileges

**Evidence:** See [`queries/task1_create_pdb.sql`](queries/task1_create_pdb.sql) and [`screenshots/task1_creation/`](screenshots/task1_creation/)

---

### Task 2: Create and Delete PDB (2 points)

Demonstrated PDB lifecycle management:
- **PDB Name:** `ka_to_delete_pdb_29080`
- **Status:** Successfully created and permanently deleted

**Key Steps:**
1. Created temporary PDB
2. Opened and verified existence
3. Closed PDB for safe deletion
4. Unplugged PDB (created XML metadata)
5. Dropped PDB with all datafiles
6. Verified complete removal

**Evidence:** See [`queries/task2_delete_pdb.sql`](queries/task2_delete_pdb.sql) and [`screenshots/task2_deletion/`](screenshots/task2_deletion/)

---

### Task 3: Oracle Enterprise Manager Setup (1 point)

Configured OEM for database monitoring:
- **HTTP Port:** 8080
- **HTTPS Port:** 8443
- **Access URL:** `https://localhost:8443/em`
- **Login:** system / 1234

**Key Steps:**
1. Checked and set HTTP/HTTPS ports
2. Restarted database
3. Accessed OEM dashboard
4. Verified all PDBs visible

**Evidence:** See [`queries/task3_oem_setup.sql`](queries/task3_oem_setup.sql) and [`screenshots/task3_oem/`](screenshots/task3_oem/)

---

## 🛠️ Technical Environment

- **OS:** Windows 10/11
- **Database:** Oracle 21c Express Edition
- **Instance:** XE
- **Base Path:** `D:\PL-SQL\ORADATA\XE\`
- **Tool:** SQL*Plus

---

## 📊 Results Summary

| Task | Description | Status | Points |
|------|-------------|--------|--------|
| 1 | Create Main PDB | ✅ Complete | 2/2 |
| 2 | Create & Delete PDB | ✅ Complete | 2/2 |
| 3 | Configure OEM | ✅ Complete | 1/1 |
| **Total** | | **✅ Complete** | **5/5** |

---

## 🔑 Key Concepts Applied

- **CDB (Container Database):** Main database managing multiple PDBs
- **PDB (Pluggable Database):** Self-contained, portable database units
- **Multitenant Architecture:** Efficient resource sharing across PDBs
- **User Management:** Creating users and assigning privileges
- **OEM:** Database monitoring and management tool

---

## 📝 Challenges & Solutions

**Challenge 1:** Finding correct datafile paths  
**Solution:** Queried `CDB_DATA_FILES` to identify existing structure

**Challenge 2:** Selecting unplug directory  
**Solution:** Used `DATA_PUMP_DIR` from `dba_directories` query

**Challenge 3:** OEM port configuration  
**Solution:** Set custom ports (8080/8443) and restarted database

---

## 🚀 How to Use

1. Clone repository:
   ```bash
   git clone https://github.com/Kalizafiona/-oracle_pdb_ass_II_-29080-_-KALIZA/main
   ```

2. Connect to Oracle:
   ```bash
   sqlplus sys as sysdba
   ```

3. Run scripts (modify paths as needed):
   ```sql
   @queries/task1_create_pdb.sql
   @queries/task2_delete_pdb.sql
   @queries/task3_oem_setup.sql
   ```

---

## 📚 Learning Outcomes

- Mastered Oracle Multitenant Architecture
- Gained hands-on PDB lifecycle management experience
- Configured enterprise monitoring tools
- Developed database administration skills
- Created professional technical documentation

---

## 📞 Contact

**KALIZA Fiona**  
Student ID: 29080  
INSY 8311 - Database Development with PL/SQL  

---

## 🙏 Acknowledgments

Special thanks to my lecturer Eric Maniraguha for comprehensive guidance and lecture materials.

---

**Status:** ✅ Assignment Completed Successfully  
**Submission Date🕖16 February 2026

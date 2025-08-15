🎓 Informatica 10.4.1 NIC IT Academy Project
Welcome to my Informatica 10.4.1 tutorial and project repository! This project showcases my learning journey and hands-on experience with Informatica PowerCenter, covering installation, core components, transformations, workflows, and more. 🚀
📋 Table of Contents

Installation
Administrator Console
Core Components
Informatica Designer
Informatica Workflow Designer
Informatica Monitor


Data Loading Scenarios
Transformations
Advanced Features
Dependencies & Debugging
Migration/Deployment
Contributing
License

📦 Installation
Get started with Informatica 10.4.1 by following these steps:

🎥 Installation Tutorial
📥 Download Link

🖥️ Administrator Console

🌐 Access URLs:
https://inspiron:6008 or https://inspiron:6005 or https://inspiron:8443/administrator/


⚙️ Configuration Tips:
Set Resilience Timeout and Limit on Resilience Timeouts to 3600 in Integration Service (Services and Node > int) to prevent disconnections.
Enable Run session Impacted by dependency to allow running failed sessions after modifications.
Fix domain errors by right-clicking the repository, configuring the domain, and setting localhost as host with port 6005.



🛠️ Core Components
🔧 Informatica Designer

Create a folder NIC IT Academy in the repository.
Access 5 key tools: Source Analyser, Target Designer, Transformation Developer, Mapplet Designer, and Mapping Designer.
Supported Sources: Relational DB, Flat Files (txt/csv), Cobol, XML.
Supported Targets: Relational DB, Flat Files (txt/csv), XML.
Transformations:
Active: Source Qualifier, Filter, Router, Aggregator, Joiner, Normalizer, Rank, Union, Sorter.
Passive: Expression, Lookup, Sequence Generator, Stored Procedure, External Procedure, Macro, DX_Notification.



📊 Informatica Workflow Designer

Tools: Task Developer (single reusable session), Worklet Designer (multiple sessions), Workflow Designer (one-time workflows).
Steps:
Create a workflow and drag/drop a session.
Link tasks and configure relational connections (use parameterized connections in production).
Set Stop on Errors to 1 and Fail Parent if Task Fails.
Validate, save, and start the workflow.



👀 Informatica Monitor

Monitor Run Status (Running/Succeeded/Failed/Aborted/Stopped), Row Count (source/target), Throughput (records/sec), and Session Logs.
Track Reader and Writer threads for performance insights.

📥 Data Loading Scenarios

Table to Table Load
Use ODBC for Oracle sources/targets, create mappings, and validate workflows.


Flat File to Table Load
Export CSV to C:\Informatica\10.4.1\server\infa_shared\SrcFiles, import with delimiters, and configure session file paths.


Table to Flat File Load
Import from DB, define flat file targets, and set header options.


Dynamic Target File Generation
Add a filename column, use Expression Transformation with to_char(systimestamp(), 'DDMMYYYYHH24MISS'), and refresh the session.



🔄 Transformations

Filter: Apply conditions anywhere in the pipeline (unlike Source Qualifier).
Expression: Handle calculations with IFF, REPLACE, and variable ports.
Joiner: Join heterogeneous sources (e.g., flat file + DB) with Normal, Master Outer, Detail Outer, or Full Outer joins.
Sorter: Sort data (active with distinct, passive without) and optimize performance.
Aggregator: Perform SUM, AVG, MIN, MAX with group-by options.
Router: Route data to multiple groups with conditions.
Rank: Rank data (Top N, Bottom N) with optional case-sensitive comparison.
Sequence Generator: Generate sequences with cycle/reset options.
Union: Combine multiple sources (acts like UNION ALL in SQL).
Lookup: Look up values from tables/files (connected/unconnected).
Update Strategy: Implement SCD Type 1 with new/update logic.
Java: Write custom Java code for encryption/decryption.
SQL: Execute SQL queries mid-pipeline (Query/Script mode).
Normalizer: Transpose rows to columns (e.g., for Cobol sources).
Source Qualifier: Filter and join homogeneous sources.

🚀 Advanced Features

Dependencies: Link sessions with success/failure conditions (parallel or sequential).
Debugger: Backtrack issues using session logs or step-through mapping data.
Stored Procedure: Call DB procedures for calculations or status checks.
Migration/Deployment:
Export/Import: Move objects between environments.
Deployment Groups: Use groups for controlled deployment.
Copy/Replace Folder: Migrate large object sets.



🤝 Contributing
Feel free to follow profile for all data engineering stuffs! 🌱

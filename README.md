### BACKUP MYSQL DB

Ruby script that creates a dump file of all databases
and compresses it to a single tar.gz file then delete the temporary dump files.

Usage: `ruby backup-mysql-db.rb`

Author: Raymond Usbal <raymond@philippinedev.com>

Date: 18 December 2016

Set database access configuration in `.extra.my.cnf`
```
[client]
user = root
password = root1
```
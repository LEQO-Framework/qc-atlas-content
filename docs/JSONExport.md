# Exporting Postgres table data to JSON

To export table data as JSON files make sure `psql` is installed. It can be found [here](https://www.postgresql.org/docs/9.3/app-psql.html).

Afterwards, connect to the database e.g. `psql -h <ip> -U <db-user> -d <db-name>` and enter the password for the selected user.

Useful psql commands:
- `\l` - list all available databases
- `\c` - switch to a database
- `\d` - list all tables in the database

Use the following commands to export table data as JSON to a file:
1. `\t` - turn on tuples mode
2. `\a` - unalign output format
3. `\o <filename>` - output file name
4. `SELECT array_to_json(array_agg(row_to_json(u))) FROM <dbname> u;` - SQL function to export as JSON to the output file
# planqk-atlas-content

Contains example data for the [qc-atlas](https://github.com/UST-QuAntiL/qc-atlas) backend. SQL files found in the [SQL/backup-files](example-data/SQL/backup-files) folder can be imported to the Postgres DB.
Furthermore, JSON files, containing the Postgres table data are provided inside the [example-data](example-data) folder.

The [Dockerfile](Dockerfile) clones this repository and initializes a postgres db, containing the data of the [SQL files](example-data/SQL/backup-files).
If mutliple dbs are needed e.g. the NISQ analyzer project and Pattern Atlas are needed as well, use the [quantil-docker setup](https://github.com/UST-QuAntiL/quantil-docker), which will init the example data for [qc-atlas](https://github.com/UST-QuAntiL/qc-atlas) and the [nisq-analyzer](https://github.com/UST-QuAntiL/nisq-analyzer), found [here](https://github.com/UST-QuAntiL/nisq-analyzer-content).

## How to
- [export SQL data](docs/SQLExport.md)
- [export JSON data](docs/JSONExport.md)
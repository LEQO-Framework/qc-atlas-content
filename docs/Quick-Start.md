# Quick Start Guide to browse and manipulate the DB

## prerequisites
- [Install Docker](https://docs.docker.com/install/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)
- [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Install postgresql-client](https://www.postgresql.org/download/)
- [Install pgAdmin](https://www.pgadmin.org/download/)
## 1. Using pgAdmin
1. clone the repo
    ```bash
    git clone https://github.com/aldekal/qc-atlas-content.git
    cd qc-atlas-content
    ```
2. start the DB
    ```bash
    docker-compose up -d
    ```

## 2. Using Docker Volume
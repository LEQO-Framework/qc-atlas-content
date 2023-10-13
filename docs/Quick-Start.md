# Guide to query and manipulate the QC-Atlas database (content)

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
2. build the docker image
    ```bash
    docker build -t username/image-name:tag .
    ```
    replace `username/image-name:tag` with your own image name and tag.
3. run the docker container
    ```bash
    docker run --name qc-atlas-content -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d username/iamge-name:tag
    ```
    replace `username/image-name:tag` with your own image name and tag.
4. start pgAdmin
5. add a new server
6. fill in the following fields
    - `name: qc-atlas-content`
    - `host name/address: localhost`
    - `port: 5432`
    - `maintenance database: postgres`
    - `username: postgres`
    - `password: postgres`

## 2. Using Docker Volume
1. clone the repo
    ```bash
    git clone
    cd qc-atlas-content
    ```
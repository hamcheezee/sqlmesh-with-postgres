# sqlmesh-with-postgres
Utilizing data from [Eunomia dataset](https://github.com/OHDSI/EunomiaDatasets.git) in CSV format.

## Python virtual environment (optional)
It is recommended, but not required to use a python virtual environment with SQLMesh.

First, create the virtual environment:

```python
python -m venv .env      # for Python 2.x
python3 -m venv .env     # for Python 3.x
```

Then activate it:
```
source .env/bin/activate
```

## Setup
Install the SQLMesh dependencies with ```pip```:
```
pip install "sqlmesh[web,dbt,github,llm,mssql]"
```

Inside ```src```, initialize a SQLMesh project to use PostgreSQL as the default database dialect.
```
sqlmesh init postgres
```

## Configuring connection to PostgreSQL
To configure a connection to PostgreSQL, follow these steps:

1. Install PostgreSQL client library
   
    Ensure you have the PostgreSQL client library installed. If not, install it using ```pip```:
    ```
    pip install psycopg2-binary
    ```

2. Add PostgreSQL connection

    Inside ```src/config.yaml```, add the following [configuration](https://sqlmesh.readthedocs.io/en/stable/integrations/engines/postgres/):
    ```
    connection:
      type: postgres
      host: {POSTGRES_HOST}
      port: {POSTGRES_PORT}
      user: {POSTGRES_USER}
      password: {POSTGRES_PASSWORD}
      database: {POSTGRES_DB}
    ```
3. Test the connection

   ```
   sqlmesh info
   ```

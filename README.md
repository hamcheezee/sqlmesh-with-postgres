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

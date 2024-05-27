# SQLMesh Integration with Airflow

Integrating SQLMesh with Apache Airflow allows users to incorporate SQLMesh queries and workflows directly into their Airflow DAGs.

## Install and Run
To initiate the Airflow services from the ```src/airflow``` directory, start by running these commands:

To set up the Airflow environment, you'll need to initialize it once:
```
make init
```

Then, proceed to build the Airflow image and start the services:
```
make run
```
   > The Airflow UI should now become available at http://localhost:8080/. Use the username ```airflow``` and password ```airflow``` to log in.

Stop Airflow services:
```
make stop
```
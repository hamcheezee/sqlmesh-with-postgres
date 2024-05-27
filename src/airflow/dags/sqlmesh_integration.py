from sqlmesh.schedulers.airflow.integration import SQLMeshAirflow

sqlmesh_airflow = SQLMeshAirflow("spark", default_catalog="spark_catalog")

for dag in sqlmesh_airflow.dags:
    globals()[dag.dag_id] = dag
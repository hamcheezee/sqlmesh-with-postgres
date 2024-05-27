from sqlmesh.schedulers.airflow.integration import SQLMeshAirflow

sqlmesh_airflow = SQLMeshAirflow(engine_operator="postgres", default_catalog="postgres")

for dag in sqlmesh_airflow.dags:
    globals()[dag.dag_id] = dag
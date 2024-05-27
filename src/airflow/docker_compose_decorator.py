import os

from ruamel.yaml import YAML

DOCKER_COMPOSE_YAML = "docker-compose.yaml"

yaml = YAML(typ="safe")
yaml.default_flow_style = False

with open(DOCKER_COMPOSE_YAML, "r", encoding="utf-8") as fd:
    docker_compose = yaml.load(fd)

# Don't load Airflow example DAGs
docker_compose["x-airflow-common"]["environment"]["AIRFLOW_CORE_LOAD_EXAMPLES"] = "false"

docker_compose["services"]["postgres"]["ports"] = ["5432:5432"]

with open(DOCKER_COMPOSE_YAML, "w", encoding="utf-8") as fd:
    yaml.dump(docker_compose, fd)
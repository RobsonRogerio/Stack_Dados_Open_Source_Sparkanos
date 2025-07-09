#!/bin/bash

files=(
  "./applications/spark/docker-compose.yml"
  "./applications/trino/docker-compose.yml"
  "./applications/superset/docker-compose.yml"
  "./applications/postgres_adventureworks/docker-compose.yml"
  "./applications/spark/docker-swarm.yml"
  "./Dockerfile"
  "./applications/airflow/dags/dag_sample.py"
)

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Updating $file"
    sed -i 's/wlcamargo/robsonrogerio/g' "$file"
  else
    echo "File not found: $file"
  fi
done

echo "Substituição concluída!"

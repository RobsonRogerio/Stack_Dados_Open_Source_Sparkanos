#!/bin/bash
PROJECT_ROOT="/home/robson_rogerio/docker/sparkanos"

run_docker_compose() {
    local service_path="$1"
    echo "Running docker-compose in $service_path"
    cd "$service_path" || { echo "Failed to change directory to $service_path"; exit 1; }
    docker compose up -d
}

run_docker_compose "$PROJECT_ROOT/applications/postgres_adventureworks"
run_docker_compose "$PROJECT_ROOT/applications/minio"
run_docker_compose "$PROJECT_ROOT/applications/spark"
run_docker_compose "$PROJECT_ROOT/applications/trino"
run_docker_compose "$PROJECT_ROOT/applications/airflow"
run_docker_compose "$PROJECT_ROOT/applications/superset"
run_docker_compose "$PROJECT_ROOT/applications/open_metadata"

echo "All services started!"
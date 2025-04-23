#!/bin/bash

# sparkanos_deploy.sh - Script completo de deploy da stack Sparkanos

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Diretório base
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${BASE_DIR}/applications/.env"

# Função para log
log() {
    echo -e "${GREEN}[$(date +'%Y-%m-%d %H:%M:%S')] $1${NC}"
}

error() {
    echo -e "${RED}[$(date +'%Y-%m-%d %H:%M:%S')] ERROR: $1${NC}"
    exit 1
}

warning() {
    echo -e "${YELLOW}[$(date +'%Y-%m-%d %H:%M:%S')] WARNING: $1${NC}"
}

# Carregar variáveis de ambiente
load_env() {
    log "Carregando variáveis de ambiente..."
    
    if [[ ! -f "$ENV_FILE" ]]; then
        error "Arquivo .env não encontrado em ${ENV_FILE}"
    fi
    
    # Carregar .env
    set -a
    source "$ENV_FILE"
    set +a
    
    log "Variáveis de ambiente carregadas com sucesso"
}

# Verificar ambiente
check_environment() {
    log "Verificando ambiente..."
    
    # Verificar Docker
    if ! command -v docker &> /dev/null; then
        error "Docker não encontrado"
    fi
    
    # Verificar Docker Compose
    if ! command -v docker-compose &> /dev/null; then
        error "Docker Compose não encontrado"
    fi
    
    # Verificar variáveis críticas
    required_vars=(
        "MINIO_ROOT_USER"
        "MINIO_ROOT_PASSWORD"
        "POSTGRES_USER"
        "POSTGRES_PASSWORD"
        "AIRFLOW_UID"
        "SUPERSET_USER"
        "MYSQL_ROOT_PASSWORD"
        "AWS_ACCESS_KEY_ID"
        "AWS_SECRET_ACCESS_KEY"
    )
    
    for var in "${required_vars[@]}"; do
        if [[ -z "${!var}" ]]; then
            error "Variável de ambiente $var não definida no .env"
        fi
    done
}

# Criar rede Docker
create_network() {
    log "Configurando rede..."
    if ! docker network ls | grep -q sparkanos; then
        docker network create sparkanos
    fi
}

# Propagar variáveis de ambiente
propagate_env() {
    log "Propagando variáveis de ambiente para os serviços..."
    
    services=(
        "minio"
        "airflow"
        "spark"
        "superset"
        "trino"
    )
    
    for service in "${services[@]}"; do
        service_dir="${BASE_DIR}/applications/${service}"
        if [[ -d "$service_dir" ]]; then
            log "Configurando ${service}..."
            ln -sf "$ENV_FILE" "${service_dir}/.env"
        else
            warning "Diretório ${service_dir} não encontrado"
        fi
    done
}

# Atualizar imagens
update_images() {
    log "Atualizando imagens..."
    
    # MinIO
    sed -i "s|minio/minio:.*|minio/minio:RELEASE.2024-03-15T19-27-58Z|g" applications/minio/docker-compose.yml
    
    # Spark
    sed -i "s|image: .*spark.*|image: apache/spark:3.5.0-python3|g" applications/spark/docker-compose.yml
    
    # Airflow (usando variável do .env)
    sed -i "s|apache/airflow:.*|${AIRFLOW_IMAGE_NAME}|g" applications/airflow/docker-compose.yml
    
    # Superset
    sed -i "s|apache/superset:.*|apache/superset:${SUPERSET_VERSION}|g" applications/superset/docker-compose.yml
    
    # Trino
    sed -i "s|trinodb/trino:.*|trinodb/trino:${TRINO_VERSION}|g" applications/trino/docker-compose.yml
}

# Backup dos volumes
backup_volumes() {
    log "Realizando backup dos volumes..."
    
    backup_dir="${BASE_DIR}/backups/$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    
    services=(
        "minio"
        "postgres"
        "superset"
        "metastore-db"
    )
    
    for service in "${services[@]}"; do
        if docker ps -q -f name=$service &>/dev/null; then
            log "Backup do volume de $service..."
            docker run --rm \
                --volumes-from $service \
                -v "$backup_dir":/backup \
                alpine tar czf "/backup/${service}_data.tar.gz" /data
        fi
    done
    
    # Salvar cópia do .env
    cp "$ENV_FILE" "${backup_dir}/.env.backup"
}

# Deploy dos serviços
deploy_services() {
    log "Iniciando deploy dos serviços..."
    
    # Ordem de deploy baseada em dependências
    services=(
        "minio"
        "postgres"
        "redis"
        "airflow"
        "spark"
        "trino"
        "superset"
    )
    
    for service in "${services[@]}"; do
        log "Deployando $service..."
        (
            cd "${BASE_DIR}/applications/${service}"
            
            # Verificar se existe docker-compose.yml
            if [[ ! -f "docker-compose.yml" ]]; then
                error "docker-compose.yml não encontrado para ${service}"
            }
            
            # Down com timeout para evitar problemas
            timeout 30 docker-compose down --remove-orphans || true
            
            # Up com retry
            retry_count=0
            max_retries=3
            
            until docker-compose up -d || [ $retry_count -eq $max_retries ]; do
                retry_count=$((retry_count+1))
                warning "Tentativa ${retry_count} de ${max_retries} para ${service}"
                sleep 10
            done
            
            if [ $retry_count -eq $max_retries ]; then
                error "Falha ao iniciar ${service} após ${max_retries} tentativas"
            fi
            
            # Esperar healthcheck
            log "Aguardando healthcheck de ${service}..."
            sleep 30
            
            # Verificar status
            if ! docker-compose ps | grep -q "Up"; then
                error "Falha no deploy de ${service}"
            fi
        )
    done
}

# Verificar status dos serviços
check_services() {
    log "Verificando status dos serviços..."
    
    services=(
        "minio"
        "spark-master"
        "spark-worker1"
        "spark-worker2"
        "airflow-webserver"
        "airflow-scheduler"
        "trino"
        "superset"
    )
    
    for service in "${services[@]}"; do
        if ! docker ps | grep -q $service; then
            error "Serviço $service não está rodando"
        fi
        
        # Verificar logs por erros
        if docker logs $service 2>&1 | grep -i "error"; then
            warning "Encontrados erros nos logs de $service"
        fi
    done
    
    log "Todos os serviços estão rodando!"
}

# Mostrar informações de acesso
show_access_info() {
    log "Informações de Acesso:"
    echo -e "\nMinIO:"
    echo "URL: http://localhost:9000"
    echo "User: $MINIO_ROOT_USER"
    
    echo -e "\nAirflow:"
    echo "URL: http://localhost:8080"
    echo "User: $_AIRFLOW_WWW_USER_USERNAME"
    
    echo -e "\nSuperset:"
    echo "URL: http://localhost:8088"
    echo "User: $SUPERSET_USER"
    
    echo -e "\nTrino:"
    echo "URL: http://localhost:8080"
    
    echo -e "\nSpark Master:"
    echo "URL: http://localhost:8083"
}

# Função principal
main() {
    log "Iniciando deploy da stack Sparkanos..."
    
    # Verificações e setup inicial
    load_env
    check_environment
    
    # Backup
    backup_volumes
    
    # Setup
    create_network
    propagate_env
    update_images
    
    # Deploy
    deploy_services
    
    # Verificação final
    check_services
    
    # Mostrar informações de acesso
    show_access_info
    
    log "Deploy completo!"
}

# Execução
main "$@" 
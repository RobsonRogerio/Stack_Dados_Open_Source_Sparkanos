#!/bin/bash

# Caminho base do projeto
BASE_DIR=$(pwd)

# Lista de pastas com docker-compose.yml
folders=$(find . -type f -name "docker-compose.yml" -exec dirname {} \;)

for folder in $folders; do
  echo "🔧 Subindo serviços em: $folder"
  cd "$BASE_DIR/$folder" || continue

  # Derruba containers antigos
  docker compose down

  # Sobe containers atualizados
  docker compose up -d --build --remove-orphans
  echo "✅ Finalizado em: $folder"
  echo "-----------------------------"
done

cd "$BASE_DIR"
echo "🎉 Todos os serviços foram reiniciados com sucesso."

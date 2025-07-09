#!/bin/bash

# === CONFIGURE AQUI ===
DOCKERHUB_USER="robsonrogerio"  # Troque pelo seu usuário Docker Hub
PUSH_IMMEDIATELY=true                   # true para enviar, false só para testar

echo "🔍 Listando imagens usadas em containers ativos..."

IMAGENS=$(docker ps --format "{{.Image}}" | sort | uniq)

if [ -z "$IMAGENS" ]; then
  echo "⚠️ Nenhuma imagem encontrada em containers ativos."
  exit 1
fi

for IMAGEM in $IMAGENS; do
  echo "➡️ Imagem encontrada: $IMAGEM"

  # Extrai nome da imagem e tag separadamente
  # Exemplo: nginx:1.23.0 -> nginx e 1.23.0
  NOME_IMAGEM=$(echo "$IMAGEM" | cut -d':' -f1)
  TAG_IMAGEM=$(echo "$IMAGEM" | cut -s -d':' -f2)
  
  # Se não tem tag, usa latest como padrão
  if [ -z "$TAG_IMAGEM" ]; then
    TAG_IMAGEM="latest"
  fi

  NOVA_TAG="$DOCKERHUB_USER/$(basename $NOME_IMAGEM):$TAG_IMAGEM"

  echo "🏷️ Retag: $IMAGEM → $NOVA_TAG"

  docker tag "$IMAGEM" "$NOVA_TAG"

  if [ "$PUSH_IMMEDIATELY" = true ]; then
    echo "🚀 Fazendo push: $NOVA_TAG"
    docker push "$NOVA_TAG"
  else
    echo "🔒 Push desativado."
  fi

  echo "-----------------------------"
done

echo "🎉 Finalizado!"

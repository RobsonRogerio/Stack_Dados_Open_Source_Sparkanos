#!/bin/bash

docs=(
  "./documentation/docs/tutorials/spark/spark.md"
  "./documentation/docs/tutorials/docker/docker.md"
)

for file in "${docs[@]}"; do
  if [ -f "$file" ]; then
    echo "Atualizando $file"
    sed -i 's/wlcamargo/robsonrogerio/g' "$file"
  else
    echo "Arquivo não encontrado: $file"
  fi
done

echo "Substituição na documentação concluída!"

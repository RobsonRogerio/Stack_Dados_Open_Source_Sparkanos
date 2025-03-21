# Apache NiFi

## Content Sources
Dockerizando o Apache NiFi: Guia Prático com Docker e Docker Compose - by Renato Coelho

https://www.youtube.com/watch?v=aL76UsiARSw

Docker Hub

https://hub.docker.com/r/apache/nifi

## Ports
A porta utilizada (binding) é a 9443.

## Troubleshooting

Caso ocorra o erro "network MY_NETWORK_NAME declared as external, but could not be found" deve-se criar a rede através do comando, conforme https://github.com/wlcamargo/sparkanos/issues/3
```
sudo docker network create MY_NETWORK_NAME
```

## Executing
Renato Coelho utilizou.
```
docker compose -p apache-nifi -f docker-compose.yaml up -d
```

Optamos por utilizar a linha de comando default no sparkanos com sucesso.
```
docker compose up -d
```

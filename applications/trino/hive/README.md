# Hive Metastore Docker Image

This repository provides a Docker image for running a standalone Hive Metastore service, using OpenJDK 8 and Hadoop 3.2.0.

## Features

* Based on openjdk:8-slim for a lightweight image.

* Includes Hadoop 3.2.0 for HDFS interaction.

* Supports S3a connectivity by adding the required AWS JARs.

* Installs Apache Hive Standalone Metastore 3.0.0.

* Bundles MySQL Connector 5.1.47 for database connectivity.

* Build Instructions

* To build the Docker image, use the following command:

## How to build image?
```
cd /applications/trino/hive
```

```
docker build -t your-domain/hive-metastore .
```

## How to push the image?
```
docker push -t your-domain/hive-metastore
```
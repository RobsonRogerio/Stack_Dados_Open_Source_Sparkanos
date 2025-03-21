# The project
Visão geral do projeto.

![image](../../assets/architecture.png)
*A maioria das definições foram obtidas junto a Google Gemini.

## Cenário
A estrutura idealizada no Sparkanos visa atender a demanda de um cliente que utilizará sua própria infraestrutura de servidores para a área de dados da empresa.
Nesse sentido, selecionou-se diversas ferramentas que funcionam semelhantemente às aplicações mais utilizadas em Cloud e principalmente os protocolos utilizados por estas. Facilitando uma migração para uma cloud.


## Equipe
**Arquiteto de dados/soluções**: Responsável por idealizar a plataforma, considerando permissões de acesso e estrutura.

**Engenheiro de dados**: Responsável por construir e manter os pipelines de dados com as ferramentas e estrutura idealizada pelo arquiteto.



## Infraestrutura

### Linux
Utilizaremos o Linux devido a flexibilidade, compatibilidade e custo com as ferramentas.

### GCP - Google Cloud Platform
É uma plataforma de computação em nuvem do Google. Ela oferece serviços de armazenamento, computação e aplicativos, que podem ser usados para criar, testar e implementar soluções web, móveis e de back-end. 

O GCP é uma ferramenta importante para analistas e consultores de dados, pois se concentra em inteligência artificial, aprendizado de máquina e análise de dados.

O GCP oferece vários serviços, incluindo: 
* Armazenamento de dados em nuvem
* Machine learning avançado
* Serviços de análise de dados, como Google BigQuery e Looker Studio
* Recursos de computação
* Rede
* Segurança
* Implantação de aplicativos
* Ferramentas de gerenciamento
* Entrega de web e vídeo pela web

O GCP é executado na mesma infraestrutura do Gmail, Google Drive e Google Docs.


### Terraform
Ferramenta de código aberto que permite configurar e implantar infraestrutura em nuvem. Ela é uma ferramenta de Infraestrutura como Código (IaC), o que significa que usa arquivos de configuração para gerenciar a infraestrutura. 

O Terraform foi criado pela HashiCorp em Golang e permite: 
* Gerenciar infraestrutura em nuvens públicas, privadas e serviços SaaS 
* Gerenciar componentes como instâncias, storage, redes, DNS e bancos de dados 
* Descrever a nuvem desejada usando a linguagem de configuração HashiCorp Configuration Language (HCL) 
* Criar, alterar e gerenciar a infraestrutura de forma segura, consistente e repetível 
* Versionar, reutilizar e compartilhar configurações de recursos 

O Terraform tem várias vantagens em relação ao gerenciamento manual da infraestrutura.


## Contêiners, códigos e documentação

### Docker
Plataforma de software que permite criar, testar, implantar e gerenciar aplicativos em contêineres. Os contêineres são unidades padronizadas que contêm tudo o que o software precisa para ser executado. 

O Docker é uma ferramenta de código aberto que simplifica o processo de conteinerização. Ele pode ser usado para desenvolver aplicações de software de forma mais rápida e eficiente. 

O Docker oferece várias vantagens, como: 
* Padronização de ambientes operacionais
* Segurança em tempo real
* Virtualização de cargas de trabalho
* Isolamento de aplicativos
* Escalabilidade econômica
* Tempos de inicialização mais rápidos

O Docker é compatível com o sistema operacional Linux. 


### Portainner
É um orquestrador de contêineres, ideal para quem está começando, permitindo:

* Visualizar toda a infraestrutura no navegador web
* Gerenciar containers e realizar manutenções
* Monitorar e controlar os serviços
* Visualizar logs
* Instalar, configurar, solucionar e assegurar os reservatórios.

Implante e gerencie sua frota de dispositivos remotos de forma centralizada e segura. O Portainer.io é compatível com: Docker, Podman, Kubernetes, Swarm

### Git / GitHub
Git é um sistema de controle de versão, enquanto GitHub é uma plataforma que usa o Git para armazenar e compartilhar projetos. 

**Git**
É um sistema de controle de versão distribuído (DVCS) que permite rastrear alterações em arquivos.

É gratuito e de código aberto. Foi criado por Linus Torvalds, o mesmo criador do Linux

**GitHub**
É uma plataforma de desenvolvimento colaborativo. Hospeda repositórios do Git e permite armazenar e compartilhar projetos de desenvolvimento de software

Funciona como uma rede social, conectando desenvolvedores com usuários.

O Git permite que os desenvolvedores: 
* Colaborem em projetos em simultâneo
* Mantenham a integridade do código-fonte
* Saibam quem, por que e quando um arquivo foi editado

O GitHub permite que os desenvolvedores: 
* Organizem o seu trabalho em repositórios
* Definam os requisitos ou direção e expectativas para a equipa
* Criem um branch para trabalhar nas atualizações
* Enviar alterações para as guardar
* Abrir um pull request para propor e discutir alterações


### MarkDown - MKDOCS
É uma linguagem de marcação de texto que permite formatar textos de forma simples e padronizada. É uma ferramenta útil para escrever textos para a web, pois pode ser facilmente convertido em HTML. 

O Markdown é usado em aplicativos como o GitHub e o Slack. 

Como funciona?
* O Markdown usa uma sintaxe baseada em caracteres comuns, como o # para cabeçalhos, * para itálico e ** para negrito. 
* A sintaxe do Markdown torna a escrita mais fluida e menos propensa a erros. 
* O Markdown permite marcar um texto informando o que é importante, o que é um tópico, o que são links e imagens. 

Para que serve?
* O Markdown é útil para escrever textos para a web. 
* O Markdown é útil para criar documentos técnicos bem estruturados e legíveis. 

Como converter Markdown em outros formatos?
* Existem várias ferramentas e bibliotecas disponíveis para converter texto escrito em Markdown para formatos de saída como HTML, PDF e DOCX. 
* O Pandoc é uma ferramenta que pode converter arquivos de Markdown para outros formatos e vice-versa.


## Gerenciamento Proxy


### DuckDNS
É um serviço gratuito que permite associar um nome de domínio a um endereço IP dinâmico. 

O DuckDNS é útil para servidores e roteadores que têm endereços IP que mudam com frequência, como os IPs públicos atribuídos pelas operadoras de internet. 

O DuckDNS funciona da seguinte forma:
* O usuário escolhe um subdomínio de duckdns.org 
* O DuckDNS aponta esse subdomínio para o IP público do usuário 
* O DuckDNS monitora as alterações no endereço IP do usuário e mantém o subdomínio associado ao novo IP 

O DuckDNS é uma solução de DNS dinâmico (DDNS)


### Let's Encrypt
É uma autoridade de certificação gratuita que emite certificados SSL/TLS. O objetivo é permitir que sites, lojas virtuais, blogs e portais tenham conexões seguras. O Let's Encrypt é uma iniciativa do Internet Security Research Group (ISRG), uma organização sem fins lucrativos. 

O Let's Encrypt permite que: 
* Pessoas físicas e jurídicas obtenham certificados SSL/TLS
* Configurem servidores HTTPS
* Obtenham automaticamente certificados confiáveis do navegador
* Habilitem conexões seguras por meio do protocolo “https”

O Let's Encrypt emite dois tipos de certificados: 
* SSL de domínio único padrão
* SSL Wildcard, que cobre todos os subdomínios de um domínio

O Let's Encrypt é gratuito, mas alguns serviços de hospedagem podem cobrar uma taxa para oferecer suporte a esses certificados.


### HTTPS
Hypertext Transfer Protocol Secure, é um protocolo de transferência de dados que criptografa a comunicação entre um navegador e um site. Ele é uma versão mais segura do HTTP, o protocolo padrão para enviar dados na internet. 

O HTTPS é importante para proteger dados sensíveis, como logins e pagamentos. Ele garante que as informações transmitidas não possam ser interceptadas ou adulteradas por terceiros. 

O HTTPS é essencial para sites que coletam dados sensíveis. Ele é benéfico para os visitantes do site e para o próprio site, pois contribui para a posição dos sites nos resultados de pesquisa do Google. 

O HTTPS é identificado na URL por um cadeado verde e o prefixo "https://". 

Para usar o HTTPS, é necessário: 
* Garantir o certificado SSL
* Validar o suporte HTTPS de recursos externos
* Planejar a migração de protocolo
* Habilitar o protocolo HTTPS
* Instalar o certificado SSL
* Atualizar recursos externos e internos e links internos para HTTPS
* Inserir a versão HTTPS no Search Console
* Redirecionar HTTP para HTTPS
* Habilitar suporte HTTP/2 e HSTS


## Orquestração e documentação


### Air flow
É uma ferramenta de código aberto que permite automatizar, agendar e monitorar fluxos de trabalho. É usada para criar pipelines de dados complexos, gerenciar dependências e agendar tarefas. 

O Airflow foi desenvolvido pela Airbnb em 2014 e lançado como open source em 2015. É uma ferramenta popular entre engenheiros de dados. 

O Airflow funciona com base em Directed Acyclic Graphs (DAGs), que são representações de fluxos de trabalho em código Python. Os DAGs permitem: 
* Visualizar tarefas e suas dependências
* Garantir que as tarefas sejam executadas na ordem correta
* Lidar com falhas e novas tentativas automaticamente
* Criar fluxos de trabalho de diferentes complexidades
* Monitorar o progresso das tarefas
* Enviar alertas por e-mail ou Slack quando uma tarefa é concluída ou falha

O Airflow permite a execução de diferentes tipos de tarefas, como: 
* Execução de scripts Python
* Trabalho com containers do Docker
* Execução de comandos bash
* Chamadas de consultas SQL no PostgreSQL
* Execução de comandos UNLOAD do Redshift para o S3
* Envio de mensagens de correio eletrónico

### Open metadata
É uma plataforma de metadados aberta que ajuda a gerenciar dados, descobrir informações e garantir a governança de dados. 

O OpenMetadata é uma plataforma open source que permite a colaboração entre equipes e a partilha de ativos de dados de forma segura. 

Os metadados são dados sobre dados que descrevem o conteúdo, como o autor, a data de criação, o resumo, as palavras-chave, entre outros. 

As principais funcionalidades do OpenMetadata são: 
* Coleta automatizada de linhagem de dados
* Edição de linhagem de dados existente
* Adição manual de linhagem de dados
* Partilha de ativos de dados de forma segura
* Construção de uma cultura de dados baseada na documentação
* Gestão de metadados de ponta a ponta


## Fontes de dados
Serão utilizados nesse projeto o PostGreSQL como banco de dados e o formato de arquivo JSON.


### PostGreSQL
O PostgreSQL é um Sistema Gerenciador de Banco de Dados (SGBD) relacional e de código aberto. Ele é usado para armazenar e gerenciar dados, permitindo a criação, modificação e inserção de informações. 

O PostgreSQL é compatível com várias linguagens de programação e protocolos, como: C, C++, Go, Perl, Python, Java, .Net, Ruby, ODBC, Tcl.

O PostgreSQL é usado em diversos casos de uso corporativos, como: Business Intelligence, Processamento de transações, Análise de dados, Serviços de machine learning. 

O PostgreSQL é uma alternativa para quem trabalha com MySQL e Oracle. Características do PostgreSQL:
* É um SGBD relacional, ou seja, trabalha com tabelas e relacionamentos 
* É transacional, ou seja, fornece as garantias ACID através de transações 
* Aceita a linguagem SQL para interface entre ele e outras aplicações ou usuários 
* É compatível com várias linguagens de programação e protocolos 
* É gratuito e de código fonte aberto 
* É estendido, ou seja, não está restrito à abordagem relacional 


### Arquivo JSON
JavaScript Object Notation é um formato de dados que permite armazenar e trocar informações de forma simples e legível por humanos. Ele é frequentemente usado para transferir dados entre servidores e aplicativos da web. 

O JSON é um formato leve e aberto, que é uma alternativa ao XML. Ele é popular entre desenvolvedores web, de análise de dados e de engenharia de software. 

Algumas características do JSON são:
* É baseado em texto, o que facilita a leitura por humanos e a compreensão por computadores 
* É independente de linguagem, o que permite a troca de dados entre diferentes linguagens de programação e plataformas 
* É fácil de aprender e solucionar problemas 
* Requer menos codificação e processa mais rapidamente 
* Representa as informações de forma mais compacta 

Um objeto JSON é iniciado e terminado por chaves ({}), e contém dois ou mais pares de key/value, separados por vírgulas. Cada chave é seguida por dois pontos para diferenciar o valor.


## Extração e carga (Extract and Load - EL)
Utilizaremos o **Python** por ser compatível com todas as ferramentas de extração, processamento e análise de dados.

Python é uma linguagem de programação de uso geral, orientada a objetos e de código aberto. É usada em diversas áreas, como desenvolvimento web, ciência de dados, machine learning e computação científica. 

O Python é conhecido por ser: 
* Fácil de aprender
* Eficiente
* Portátil, podendo ser executado em várias plataformas
* Versátil, podendo ser usado para criar uma grande variedade de aplicações

O Python é usado por: 
* Desenvolvedores profissionais de software
* Escolas e faculdades como linguagem de programação introdutória
* Empresas como Google, Facebook, Instagram, Dropbox, Spotify, Reddit, Uber e Lyft

O Python foi criado em 1991 pelo matemático e programador holandês Guido van Rossum. O nome da linguagem é uma homenagem ao seriado de humor britânico Monty Python's Flying Circus.

Para extração poderíam ser utilizadas ferramentas como Ayrbite, Apache Hop, Pentaho.


## Armazenamento 

### MinIO
É um sistema de armazenamento de objetos de código aberto, que pode ser usado para armazenar dados não estruturados, como fotos, vídeos, arquivos de log, backups e imagens de contêiner. 

O MinIO é compatível com a API do Amazon S3 e foi criado para ser uma alternativa aos grandes provedores de nuvem. Ele é ideal para empresas que precisam de um controle maior sobre os seus dados. 

Algumas características do MinIO: 
* É 100% open source e roda em hardware padrão da indústria
* É escalável, ou seja, cresce conforme as necessidades
* É compatível com o Amazon S3
* Pode ser implementado em um modo independente ou distribuído
* É adequado para infraestrutura de nuvem privada
* Pode ser usado na nuvem pública, nuvem privada e edge


### Interface SQL

Todos os dados chegarão na estrutura em formato Parquet e serão armazenados na Landing Zone.


#### Arquivos Parquet
São um formato de arquivo de código aberto que armazena dados em colunas. São usados para armazenar e analisar dados complexos em grandes volumes. 

O Parquet é um formato eficiente, que se destaca pela compressão de dados e capacidade de lidar com diversos tipos de codificação. Algumas características dos arquivos Parquet incluem: Otimizações para acelerar as consultas, Compressão de coluna eficiente, Alta compatibilidade com OLAP, Capacidade de lidar com uma ampla variedade de tipos de codificação. 

O Parquet é muito usado no ecossistema do Apache Hadoop. É usado em aplicações de análises da AWS, como o Amazon Athena. 

O Parquet é mais eficiente do que outros formatos de arquivo, como CSV ou JSON. 


#### Apache Hive
É um sistema de armazenamento de dados distribuído que permite consultar, resumir e analisar grandes quantidades de dados. Ele é construído sobre o Apache Hadoop, uma estrutura de código aberto para processar e armazenar grandes conjuntos de dados. 

O Apache Hive é projetado para trabalhar com petabytes de dados e é compatível com vários formatos de arquivo. Ele permite que os usuários: 
* Leiam, gravem e gerenciem dados
* Analisem dados em grande escala
* Consultem dados usando uma interface semelhante ao SQL
* Projetem a estrutura de dados em grande parte não estruturados

O Apache Hive usa o HiveQL, uma linguagem de consulta semelhante ao SQL e está disponível no Amazon EMR e no Azure HDInsight.


#### Landing Zone
Landing zone, ou zona de pouso, é um ambiente seguro e padronizado que serve como ponto de partida para implantar aplicativos, dados e serviços na nuvem. A landing zone é uma base sólida para a construção de cargas de trabalho na nuvem, permitindo que as empresas integrem equipes e funções, e dividam-nas em várias contas. 

A landing zone pode ser usada em plataformas como AWS e Microsoft Azure. 

Benefícios da landing zone:
* Permite a implantação de cargas de trabalho e aplicativos de forma rápida e segura 
* Permite o isolamento de recursos e cargas de trabalho em várias contas 
* Permite o controle de um ambiente com múltiplas contas 
* Permite a implementação de regras de governança de dados 
* Permite a configuração de controles de acesso e configurações de firewall 


### Transformação
Nessa camada os dados serão processados pelo Apache Spark e conforme o processamento os dados passarão pelas camadas Bronze, Silver e Gold.

#### Apache Spark
É um sistema de processamento de dados de código aberto que permite analisar grandes volumes de dados. Ele é usado para aplicações de inteligência artificial (IA) e aprendizado de máquina. 

O Apache Spark é usado para: 
* Processamento de dados em grande escala
* Análises em tempo real
* Processamento de gráficos
* Machine learning
* Consultas interativas
* Processamento de lotes

O Apache Spark é executado em: Apache Hadoop, Apache Mesos, Kubernetes, Na nuvem, Em diversas fontes de dados. Desenvolvido pela Apache Software Foundation e foi criado em 2009 no AMPLab da UC Berkeley.

O Apache Spark é caracterizado por: 
* Processamento de dados distribuído e paralelo
* Armazenamento em cache na memória
* APIs de desenvolvimento em Java, Scala, Python e R
* Escalabilidade
* Tolerância a falhas
* Velocidade computacional


#### Delta lake
É um software de código aberto que serve para armazenar dados em escala. Ele é usado para melhorar a confiabilidade, segurança e desempenho de data lakes existentes. O Delta Lake é compatível com ferramentas como o Apache Spark e o Pandas. Ele pode ser usado em armazenamento em nuvem, como AWS S3, Azure Storage e GCS. 

O Delta Lake oferece os seguintes recursos: 
* Transações ACID, que garantem a confiabilidade de leituras e gravações
* Metadados escaláveis
* Streaming unificado
* Processamento de dados em lote
* Controle de versão de dados
* Operações de dados flexíveis, como remover ou renomear colunas

O Delta Lake foi desenvolvido pela Databricks e é o formato padrão para todas as operações em Databricks. 
* Algumas das vantagens do Delta Lake são: 
* Flexibilidade para armazenar dados na forma original
* Processamento analítico eficiente
* Escalabilidade para lidar com grandes volumes de dados
* Versão para rastrear e ter histórico de versões dos dados
* Validação para garantir a qualidade e integridade dos dados

Nesse projeto serão criadas camadas Bronze, Silver e Gold caracterizando a evolução do tratamento de dados.


### Exploração

A exploração será através de Jupyter notebooks.


#### Jupyter notebooks
É uma aplicação web de código aberto que permite criar e compartilhar documentos com código, fórmulas e outros recursos multimídia. É uma ferramenta muito utilizada por cientistas de dados e programadores Python. 

O Jupyter Notebook é compatível com várias linguagens de programação, como: 
* Python, Ruby, Julia, Perl, Matlab, R.
* O Jupyter Notebook pode ser usado para: 
* Criar e compartilhar documentos com código ao vivo
* Visualizar dados em Big Data e Data Science
* Criar redes neurais em Machine Learning
* Explorar conjuntos de dados
* Tratar e limpar dados
* Criar gráficos representativos

O Jupyter Notebook pode ser executado: 
* Localmente, sem acesso à internet
* Via web
* Em qualquer servidor com acesso SSH ou HTTP
* Na nuvem, utilizando um serviço como o Google Colab

Os documentos do Jupyter Notebook podem ser exportados para diferentes formatos estáticos, como HTML, reStructeredText, LaTeX, PDF e apresentações de slides. 


### Virtualização

#### Trino
É um mecanismo de consulta SQL distribuído que permite a análise de grandes conjuntos de dados. Ele é de código aberto e foi projetado para consultar dados de várias fontes heterogêneas. 

O Trino é útil para virtualização de dados, pois permite a realização de consultas unificadas em diferentes sistemas de arquivos, bancos de dados e data lakes. 

O Trino é capaz de consultar dados em vários formatos de arquivo, como CSV, JSON, ORC e Parquet. Ele também pode executar consultas federadas em tabelas de diferentes fontes de dados, como MySQL, PostgreSQL, Cassandra, Kafka, MongoDB e Elasticsearch. 

O Trino é uma solução escalável para consultas distribuídas, sendo muito útil para empresas que precisam consultar várias fontes de dados. 


### Visualização de dados


#### Apache SuperSet
É uma ferramenta de visualização de dados de código aberto que permite explorar e analisar grandes volumes de dados. Ele é projetado para ser rápido, leve e fácil de usar. 

O Apache Superset é uma aplicação de Business Intelligence (BI) que permite: Criar dashboards interativos, Explorar dados de forma eficiente e intuitiva, Integrar-se com fontes de dados diferentes, Criar relatórios customizáveis, Partilhar dashboards. 

O Apache Superset é escalável e pode lidar com grandes volumes de dados de várias fontes, como: Bancos de dados SQL, Bancos de dados NoSQL, Serviços de data warehouses. 

O Apache Superset foi criado inicialmente no Airbnb e entrou no programa Apache Incubator em 2017. Em 2021, se tornou um projeto de alto nível na Apache Software Foundation.


#### Metabase 
É uma ferramenta open source de visualização e análise de dados. Ele permite criar relatórios e dashboards em qualquer banco de dados, facilitando a exploração de informações. 

O Metabase é útil para: 
* Criar relatórios em tabela ou gráfico
* Compartilhar dashboards com clientes
* Definir permissões para cada usuário
* Criar consultas SQL com o editor visual
* Integrar o Metabase com outros sistemas
* Comunicar insights e métricas importantes de forma periódica
* Entender mais sobre os dados gerados em uma empresa

O Metabase suporta vários bancos de dados, como: MySQL, PostgreSQL, MongoDB, Microsoft SQL Server. 

O Metabase oferece vários planos, incluindo: Free open-source tier, Pay-as-you-go Pro plan, Enterprise.


#### Microsoft Power BI
É uma ferramenta de análise de dados da Microsoft que permite transformar dados em informações visualmente atractivas e interativas. 

O Power BI é composto por: 
* Serviços de software
* Aplicações
* Conectores
* Power BI Desktop, um aplicativo gratuito para Windows
* Aplicações móveis para iOS e Android

O Power BI permite: 
* Conectar-se a diversas fontes de dados, como planilhas do Excel ou data warehouses
* Combinar as fontes de dados em um modelo de dados
* Criar relatórios e dashboards interativos
* Visualizar e descobrir conteúdos importantes
* Partilhar os conteúdos com outras pessoas
* Gerar insights e ajudar nas decisões empresariais

O Power BI é uma ferramenta de Business Intelligence (BI), que consiste em tomar decisões empresariais com base em dados. 


#### Qlik Sense
É uma ferramenta de análise de dados que permite criar visualizações, relatórios e painéis interativos. Ele é uma solução completa para análise de dados, que pode ajudar a enfrentar desafios complexos. 

O Qlik Sense permite: 
* Conectar-se a dados de diversas fontes, como bancos de dados, redes sociais, arquivos locais, remotos e da web
* Criar visualizações flexíveis e interativas
* Descobrir dados de forma autoatendiante
* Criar aplicativos, visualizações e marcadores personalizados
* Integrar dados complexos de múltiplas fontes
* Personalizar totalmente as soluções de análise
* Incorporar análise interativa em aplicativos e processos

O Qlik Sense é uma oferta moderna que se integra bem com outras ferramentas e tecnologias. 


#### Tableaut
É uma plataforma de análise visual que ajuda a explorar, gerir e partilhar dados. A plataforma é utilizada por organizações de todos os setores e departamentos, incluindo empresas globais e organizações sem fins lucrativos. 

O Tableau permite que os utilizadores visualizem, entendam e tomem decisões com base em dados. A plataforma foi criada em 2003 na Universidade Stanford. 

O Tableau tem várias funcionalidades, incluindo:

**Tableau Public** - Uma plataforma gratuita que permite explorar, criar e partilhar publicamente visualizações de dados 
**Tableau Server** - Uma plataforma de análise de negócios de nível empresarial que pode ser ampliada para atender a centenas de milhares de usuários 
**Tableau Desktop** - Uma plataforma que permite conectar-se rapidamente a quase qualquer fonte de dados 
**Tableau Explorer** - Uma licença intermediária que permite a edição de dashboards 

A Tableau também tem uma comunidade de utilizadores que se apoiam uns aos outros através de fóruns, grupos de utilizadores e eventos exclusivos



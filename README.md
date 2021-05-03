# Programa Full Cycle de Aceleração: Edição Docker

## Desafio 01

Nginx + Node.js + MySQL

### Imagens Docker Hub:

```bash
  # 1 - Imagem do MySQL        
  # https://hub.docker.com/r/andersonigorf/pfa-mysql 
  docker pull andersonigorf/pfa-mysql	 

  # 2 - Imagem do Node.js
  # https://hub.docker.com/r/andersonigorf/pfa-node 
  docker pull andersonigorf/pfa-node	 

  # 3 - Imagem do Nginx
  # https://hub.docker.com/r/andersonigorf/pfa-nginx 
  docker pull andersonigorf/pfa-nginx	 
```

### Rodar a aplicação

Execute os comandos:

```bash
  # 1 - Criar rede para os containers
  docker network create --driver bridge pfa-network

  # 2 - Executar container MySQL 
  docker run --rm -d --name db --network pfa-network andersonigorf/pfa-mysql --innodb_use_native_aio=0

  # 3 - Executar container Node.js
  docker run --rm -d --name app --network pfa-network andersonigorf/pfa-node

  # 4 - Executar container Nginx
  docker run --rm -d --name nginx -p 8080:80 --network pfa-network andersonigorf/pfa-nginx

  # 5 - Acessar a aplicação
  http://localhost:8080
```

## Desafio 02

Nginx + Node.js + MySQL (Docker Compose)

### Rodar a aplicação

Execute os comandos:

```bash
  # 1 - Clonar o repositório do projeto
  git clone https://github.com/andersonigorf/fullcycle-pfa-docker.git

  # 2 - Acessar o diretório desafio-02
  cd desafio-02

  # 3 - Executar o docker compose (Aguardar inicialização dos containers)
  docker-compose up

  # 4 - Acessar a aplicação
  http://localhost:8000
```
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

  # 3 - Executar script do banco
  docker exec -it db bash
  mysql -uroot -proot < create_modulos_table.sql
  exit

  # 4 - Executar container Node.js
  docker run --rm -d --name app --network pfa-network andersonigorf/pfa-node

  # 5 - Executar container Nginx
  docker run --rm -d --name nginx -p 8080:80 --network pfa-network andersonigorf/pfa-nginx

  # 6 - Acessar a aplicação
  http://localhost:8080
```
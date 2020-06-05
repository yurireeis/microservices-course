# DOCKER + LARAVEL

## Como começar?

### Branch master

Nesta branch, os serviços **app** e **nginx** estão configurados para fazer o build. Ou seja, a imagem será construída através de um dockerfile. Deverão ser feitos os seguintes comandos:

```docker-compose up --build```

Após a imagem estar em pé, deverá ser feito a execução dos comandos abaixo, através de execução iterativa via tty no container **app**:

```docker exec -it bash```
```php artisan key:generate```
```php artisan migrate```

### Branch develop

Nesta branch, foram criadas imagems de ambos os serviços **app** e **nginx** através de commit (com os dados existentes dentro do container). Para utilizar, basta executar o seguinte comando:

```docker-compose up --build```

Após a imagem estar em pé, deverá ser feito a execução dos comandos abaixo, através de execução iterativa via tty no container **app**:

```docker exec -it bash migrate```
```docker exec -it bash generate-key```

## Link das imagens (Docker Hub)

[Imagem Laravel](https://hub.docker.com/layers/yurireis/microservices/laravel/images/sha256-b574c0cbd685df8f7060fe17c812d6b0c79b437633f14e7d57aa0b060f5ec94a?context=repo)
[Imagem Nginx](https://hub.docker.com/layers/yurireis/microservices/nginx/images/sha256-8357f751e71eb1a75a83124524bb7080d2a5fe684d257840ecc575b5c7123192?context=repo)
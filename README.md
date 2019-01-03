# Desafio Credere API

### Descrição do problema
Uma sonda exploradora da NASA pousou em marte. O pouso se deu em uma área retangular, na qual a sonda pode navegar usando uma interface web. A posição da sonda é representada pelo seu eixo x e y, e a direção que ele está apontado pela letra inicial, sendo as direções válidas:

- `E` - Esquerda
- `D` - Direita
- `C` - Cima
- `B` - Baixo

A sonda aceita três comandos:

- `GE` - girar 90 graus à esquerda
- `GD` - girar 90 graus à direta
- `M`  - movimentar. Para cada comando `M` a sonda se move uma posição na direção à qual sua face está apontada.

**Endpoints**

Esperamos três endpoints, um que envie a sonda para a posição inicial (0,0); outro deve receber o movimento da sonda e responder com as coordenadas finais, caso o movimento seja válido ou erro caso o movimento seja inválido; e o terceiro deve responder apenas com as coordenadas atuais x e y da sonda.


## Pré-requisitos

Deixo disponíveis duas formas de utilização em ambiente de desenvolvimento, agora escolha a de sua preferência e divirta-se :)

### Sem Docker
Antes de rodar o projeto é necessário que você tenha instalado na sua máquina o * **[Ruby](https://www.ruby-lang.org/pt/documentation/installation/)**, **[Ruby On Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)** e o * **[Postgresql](https://www.postgresql.org/download/)**.

### Com Docker
Antes de rodar o projeto é necessário que você tenha instalado na sua máquina o * **[Docker](https://www.docker.com/) (docker compose)** - Para instalar o docker, [consulte a documentação oficial](https://docs.docker.com/engine/installation/) de acordo com seu sistema operacional.
## Desenvolvimento

### Sem Docker
Após realizar os passos descritos acima, siga os passos abaixo para utilizar no ambiente de desenvolvimento:

**1**. Clone o projeto e entre no mesmo
```
$ git clone https://github.com/arrudaRobson/desafio-credere
$ cd desafio-credere
```

**2**. Baixe as dependências do projeto
```
$ bundle
```

**4**. Execute as migrations
```
$ rails db:migrate
```

**5**. Inicie a aplicação
```
$ rails s
```
### Com Docker
Após realizar os passos descritos acima, siga os passos abaixo para utilizar no ambiente de desenvolvimento:

**1**. Clone o projeto e entre no mesmo
```
$ git clone https://github.com/arrudaRobson/desafio-credere
$ cd desafio-credere
```

**2**. Faça o build do container da aplicação
```
$ docker-compose build
```

**3**. Crie um novo container para o banco de dados PostgreSQL e rode as migrations
```
$ docker-compose run api rake db:create
$ docker-compose run api rake db:migrate
```

**4**. Suba os containers
```
$ docker-compose up
```
**Em seu primeiro uso banco de dados estará limpo, envie alguns posts para começar a usar a aplicação!**

## Testes

Para rodar os testes é necessaário estar no diretório do projeto e executar o comando:
```
$ rspec
```

Para testar os endpoints utilizei o postman.

## Usando a API

Para acessar os endpoints da aplicação, consulte a documentação da API:

**[Documentação API V1](https://github.com/arrudaRobson/desafio-credere/blob/master/docs/V1Api.md)**

## Construído com

*[Ruby 2.5.3](https://www.ruby-lang.org/pt/)

*[Ruby On Rails 5.2.2](https://rubyonrails.org/)

*[Postgresql 9.5](https://www.postgresql.org/)

## Aplicação em produção

Antes de usar a API em produção leia a **[documentação](https://github.com/arrudaRobson/desafio-credere/blob/master/docs/V1Api.md)**

[Ambiente de produção](https://credereapi.herokuapp.com)

## Mantenedor

Este Projeto foi construído e é mantido por: [Robson Arruda](https://github.com/arrudaRobson)

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
- `M` - movimentar. Para cada comando `M` a sonda se move uma posição na direção à qual sua face está apontada.

**Endpoints**

Esperamos três endpoints, um que envie a sonda para a posição inicial (0,0); outro deve receber o movimento da sonda e responder com as coordenadas finais, caso o movimento seja válido ou erro caso o movimento seja inválido; e o terceiro deve responder apenas com as coordenadas atuais x e y da sonda.


## Pré-requisito

Antes de rodar o projeto é necessário que você tenha instalado na sua máquina o * **[Ruby](https://www.ruby-lang.org/pt/documentation/installation/)**, **[Ruby On Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)** e o * **[Postgresql](https://www.postgresql.org/download/)**.

## Desenvolvimento

Após os passos descritos acima:

**1**. Clone o projeto
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

## Usando a API

Para acessar os endpoints da aplicação, consulte a documentação da API:

**[Documentação API V1](https://github.com/arrudaRobson/desafio-credere/blob/master/docs/V1Api.md)**

## Construído com

*[Ruby 2.5.3](https://www.ruby-lang.org/pt/)

*[Ruby On Rails 5.2.1](https://rubyonrails.org/)

*[Postgresql 10.6](https://www.postgresql.org/)

## Aplicação em produção

Antes de usar a API em produção leia a **[documentação](https://github.com/arrudaRobson/desafio-credere/blob/master/docs/V1Api.md)**

[Produção](https://credereapi.herokuapp.com)

## Mantenedor

Este Projeto foi construído e é mantido por: [Robson Arruda](https://github.com/arrudaRobson)

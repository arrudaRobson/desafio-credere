# Credere API::V1

Todas URIs são relativas à em produção *https://credereapi.herokuapp.com/v1*, para desenvolvimento *http://localhost:3000/v1*

### Autorização

Não é requerida autorização.

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

HTTP requisição | Descrição | Exemplo
------------- | ------------- | -------------
**POST** /probe | Cria uma sonda | *https://credereapi.herokuapp.com/v1/probe*
**GET** /probe/{id}/position | Exibe a posição da sonda | *https://credereapi.herokuapp.com/v1/probe/1/position*
**PATCH** /probe/{id}/movement | Move a sonda | *https://credereapi.herokuapp.com/v1/probe/1/movement*
**PUT** /probe/{id}/position/initial | Retorna sonda para posição inicial | *https://credereapi.herokuapp.com/v1/probe/1/position/initial*


## **POST** /probe

Cria a sonda

Cria sonda na posição padrão
```json
{
  "xAxis": 0,
  "yAxix": 0,
  "face": "D"
}
```
### Code
**200** ```OK```
### Exemplo de resposta
```json
{
  "data": {
    "id": 1,
    "xAxis": 0,
    "yAxis": 0,
    "face": "D",
    "created_at": "2018-12-26T03:31:04.484Z",
    "updated_at": "2018-12-26T03:31:04.484Z"
  }
}
```
**500** ```Erro interno no servidor```

## **GET** /probe/{id}/position

Exibe a posição da sonda

Exibe a posição em que a sonda está

### Parametros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerida na URI | https://credereapi.herokuapp.com/v1/probe/1/position

### Code
**200** ```OK```
### Exemplo de resposta
```json
{
  "xAxis": 0,
  "yAxix": 0,
  "face": "D"
}
```
**404** ```Sonda não encontrada```

**500** ```Erro interno no servidor```

## **PATCH** /probe/{id}/move

Move a sonda

Executa comandos para movimentar a sonda

### Parametros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerida na URI | https://credereapi.herokuapp.com/v1/probe/1/movement
 **movements** | **Array** | requerido no body | "movements": ["M", "M"]

### Code
**200** ```OK```

### Body
```json
{
	"movements": ["M", "M"]
}
```
### Exemplo de resposta
```json
{
  "xAxis": 2,
  "yAxis": 0
}
```
**404** ```Sonda não encontrada```

**422** ```Unprocessable Entity```

### Body
```json
{
	"movements": ["GD", "M", "M"]
}
```

### Exemplo de resposta
```json
{
  "message_error": "Um movimento inválido foi detectado!"
}
```

### Body
```json
{
	"movements": ["M", "M", "M", "M", "M", "M", "M"]
}
```

### Exemplo de resposta
```json
{
  "message_error": "A sonda saiu do nosso alcançe!"
}
```

**500** ```Erro interno no servidor```

## **PUT** /probe/{id}/position/reset

Retorna para posição padrão

Retorna a sonda para sua posição inicial
```json
{
  "xAxis": 0,
  "yAxix": 0,
  "face": "D"
}
```

### Parametros

Nome | Tipo | Descrição | Exemplo
------------- | ------------- | ------------- | -------------
 **id** | **Integer** | requerida na URI | https://credereapi.herokuapp.com/v1/probe/1/position/initial


### Code
**204** ```No content```

### Exemplo de resposta
```

```
**404** ```Sonda não encontrada```

**500** ```Erro interno no servidor```

## Modelo

## Probe
Name | Type |
------------ | ------------- |
**id** | **Integer** |
**x_axis** | **Integer** |
**y_axis** | **Integer** |
**face** | **String** |
**created_at** | **String** |
**updated_at** | **String** |

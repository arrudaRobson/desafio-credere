# DesafioCredereAPI::V1Api

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_probe_id_move_put**](V1Api.md#v1_probe_id_move_put) | **PUT** /v1/probe/{id}/move | Move a sonda
[**v1_probe_id_position_get**](V1Api.md#v1_probe_id_position_get) | **GET** /v1/probe/{id}/position | Exibe a posição da sonda
[**v1_probe_id_position_reset_put**](V1Api.md#v1_probe_id_position_reset_put) | **PUT** /v1/probe/{id}/position/reset | Retorna sonda para posição inicial
[**v1_probe_post**](V1Api.md#v1_probe_post) | **POST** /v1/probe | Cria uma sonda


# **v1_probe_id_move_put**
> InlineResponse200 v1_probe_id_move_put(id)

Move a sonda

Executa comandos para movimentar a sonda

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V1Api.new

id = 56 # Integer | 


begin
  #Move a sonda
  result = api_instance.v1_probe_id_move_put(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V1Api->v1_probe_id_move_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_probe_id_position_get**
> InlineResponse2001 v1_probe_id_position_get(id)

Exibe a posição da sonda

Exibe a posição em que a sonda está

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V1Api.new

id = 56 # Integer | 


begin
  #Exibe a posição da sonda
  result = api_instance.v1_probe_id_position_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V1Api->v1_probe_id_position_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_probe_id_position_reset_put**
> v1_probe_id_position_reset_put(id)

Retorna sonda para posição inicial

Retorna a sonda para o ponto inicial xAxis = 0, yAxis = 0 e face = D

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V1Api.new

id = 56 # Integer | 


begin
  #Retorna sonda para posição inicial
  api_instance.v1_probe_id_position_reset_put(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V1Api->v1_probe_id_position_reset_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_probe_post**
> InlineResponse200 v1_probe_post

Cria uma sonda

Cria uma sonda com posição padrão

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V1Api.new

begin
  #Cria uma sonda
  result = api_instance.v1_probe_post
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V1Api->v1_probe_post: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




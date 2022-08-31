# {{classname}}

All URIs are relative to *https://{environment}.apipercobaansutel.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HelloGet**](HelloApi.md#HelloGet) | **Get** /hello | Get all Hello
[**HelloHelloIdDelete**](HelloApi.md#HelloHelloIdDelete) | **Delete** /hello/{helloId} | Delete existing hello
[**HelloHelloIdPut**](HelloApi.md#HelloHelloIdPut) | **Put** /hello/{helloId} | Update existing hello
[**HelloPost**](HelloApi.md#HelloPost) | **Post** /hello | Create new hello

# **HelloGet**
> []Hello HelloGet(ctx, optional)
Get all Hello

Get all active hello by default

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***HelloApiHelloGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a HelloApiHelloGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeDone** | **optional.Bool**| Is include done hello | [default to false]
 **name** | **optional.String**| Filter hello by name | 

### Return type

[**[]Hello**](array.md)

### Authorization

[HelloAuth](../README.md#HelloAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **HelloHelloIdDelete**
> InlineResponse200 HelloHelloIdDelete(ctx, helloId)
Delete existing hello

Delete existing hello in database

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **helloId** | **string**| Hello id for updated | 

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

[HelloAuth](../README.md#HelloAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **HelloHelloIdPut**
> Hello HelloHelloIdPut(ctx, body, helloId)
Update existing hello

Update existing hello in database

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**CreateOrUpdateHello**](CreateOrUpdateHello.md)|  | 
  **helloId** | **string**| Hello id for updated | 

### Return type

[**Hello**](Hello.md)

### Authorization

[HelloAuth](../README.md#HelloAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **HelloPost**
> Hello HelloPost(ctx, body)
Create new hello

Create new hello to database

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**CreateOrUpdateHello**](CreateOrUpdateHello.md)|  | 

### Return type

[**Hello**](Hello.md)

### Authorization

[HelloAuth](../README.md#HelloAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


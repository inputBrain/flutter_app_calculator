# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAuthAuthByFirebasePost**](AuthApi.md#apiAuthAuthByFirebasePost) | **POST** /api/Auth/AuthByFirebase | 


# **apiAuthAuthByFirebasePost**
> AuthAuthByFirebaseRResponse apiAuthAuthByFirebasePost(authAuthByFirebase)



### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final authAuthByFirebase = AuthAuthByFirebase(); // AuthAuthByFirebase | 

try { 
    final result = api_instance.apiAuthAuthByFirebasePost(authAuthByFirebase);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->apiAuthAuthByFirebasePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authAuthByFirebase** | [**AuthAuthByFirebase**](AuthAuthByFirebase.md)|  | [optional] 

### Return type

[**AuthAuthByFirebaseRResponse**](AuthAuthByFirebaseRResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


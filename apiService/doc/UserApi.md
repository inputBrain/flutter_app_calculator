# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUserCreatePremiumPost**](UserApi.md#apiUserCreatePremiumPost) | **POST** /api/User/CreatePremium | 
[**apiUserCreateUserPost**](UserApi.md#apiUserCreateUserPost) | **POST** /api/User/CreateUser | 
[**apiUserGetOneUserGet**](UserApi.md#apiUserGetOneUserGet) | **GET** /api/User/GetOneUser | 


# **apiUserCreatePremiumPost**
> UserCreatePremiumRResponse apiUserCreatePremiumPost(userCreatePremium)



### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userCreatePremium = UserCreatePremium(); // UserCreatePremium | 

try { 
    final result = api_instance.apiUserCreatePremiumPost(userCreatePremium);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->apiUserCreatePremiumPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreatePremium** | [**UserCreatePremium**](UserCreatePremium.md)|  | [optional] 

### Return type

[**UserCreatePremiumRResponse**](UserCreatePremiumRResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserCreateUserPost**
> UserCreateUserRResponse apiUserCreateUserPost(userCreateUser)



### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userCreateUser = UserCreateUser(); // UserCreateUser | 

try { 
    final result = api_instance.apiUserCreateUserPost(userCreateUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->apiUserCreateUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreateUser** | [**UserCreateUser**](UserCreateUser.md)|  | [optional] 

### Return type

[**UserCreateUserRResponse**](UserCreateUserRResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserGetOneUserGet**
> UserGetOneRResponse apiUserGetOneUserGet(userGetOne)



### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userGetOne = UserGetOne(); // UserGetOne | 

try { 
    final result = api_instance.apiUserGetOneUserGet(userGetOne);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->apiUserGetOneUserGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userGetOne** | [**UserGetOne**](UserGetOne.md)|  | [optional] 

### Return type

[**UserGetOneRResponse**](UserGetOneRResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


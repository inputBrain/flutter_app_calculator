//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/User/CreatePremium' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [UserCreatePremium] userCreatePremium:
  Future<Response> apiUserCreatePremiumPostWithHttpInfo({ UserCreatePremium userCreatePremium }) async {
    // Verify required params are set.

    final path = '/api/User/CreatePremium'.replaceAll('{format}', 'json');

    Object postBody = userCreatePremium;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json', 'text/json', 'application/_*+json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [UserCreatePremium] userCreatePremium:
  Future<UserCreatePremiumRResponse> apiUserCreatePremiumPost({ UserCreatePremium userCreatePremium }) async {
    final response = await apiUserCreatePremiumPostWithHttpInfo( userCreatePremium: userCreatePremium );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserCreatePremiumRResponse') as UserCreatePremiumRResponse;
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/User/CreateUser' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [UserCreateUser] userCreateUser:
  Future<Response> apiUserCreateUserPostWithHttpInfo({ UserCreateUser userCreateUser }) async {
    // Verify required params are set.

    final path = '/api/User/CreateUser'.replaceAll('{format}', 'json');

    Object postBody = userCreateUser;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json', 'text/json', 'application/_*+json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [UserCreateUser] userCreateUser:
  Future<UserCreateUserRResponse> apiUserCreateUserPost({ UserCreateUser userCreateUser }) async {
    final response = await apiUserCreateUserPostWithHttpInfo( userCreateUser: userCreateUser );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserCreateUserRResponse') as UserCreateUserRResponse;
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/User/GetOneUser' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [UserGetOne] userGetOne:
  Future<Response> apiUserGetOneUserGetWithHttpInfo({ UserGetOne userGetOne }) async {
    // Verify required params are set.

    final path = '/api/User/GetOneUser'.replaceAll('{format}', 'json');

    Object postBody = userGetOne;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json', 'text/json', 'application/_*+json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [UserGetOne] userGetOne:
  Future<UserGetOneRResponse> apiUserGetOneUserGet({ UserGetOne userGetOne }) async {
    final response = await apiUserGetOneUserGetWithHttpInfo( userGetOne: userGetOne );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserGetOneRResponse') as UserGetOneRResponse;
    }
    return null;
  }
}

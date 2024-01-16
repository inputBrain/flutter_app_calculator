//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthApi {
  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/Auth/AuthByFirebase' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthAuthByFirebase] authAuthByFirebase:
  Future<Response> apiAuthAuthByFirebasePostWithHttpInfo({ AuthAuthByFirebase authAuthByFirebase }) async {
    // Verify required params are set.

    final path = '/api/Auth/AuthByFirebase'.replaceAll('{format}', 'json');

    Object postBody = authAuthByFirebase;

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
  /// * [AuthAuthByFirebase] authAuthByFirebase:
  Future<AuthAuthByFirebaseRResponse> apiAuthAuthByFirebasePost({ AuthAuthByFirebase authAuthByFirebase }) async {
    final response = await apiAuthAuthByFirebasePostWithHttpInfo( authAuthByFirebase: authAuthByFirebase );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AuthAuthByFirebaseRResponse') as AuthAuthByFirebaseRResponse;
    }
    return null;
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthAuthByFirebaseRResponse {
  /// Returns a new [AuthAuthByFirebaseRResponse] instance.
  AuthAuthByFirebaseRResponse({
    @required this.user,
    @required this.token,
  });

  PayloadUserUser user;

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthAuthByFirebaseRResponse &&
     other.user == user &&
     other.token == token;

  @override
  int get hashCode =>
    (user == null ? 0 : user.hashCode) +
    (token == null ? 0 : token.hashCode);

  @override
  String toString() => 'AuthAuthByFirebaseRResponse[user=$user, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (user != null) {
      json[r'user'] = user;
    }
    if (token != null) {
      json[r'token'] = token;
    }
    return json;
  }

  /// Returns a new [AuthAuthByFirebaseRResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthAuthByFirebaseRResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthAuthByFirebaseRResponse(
        user: PayloadUserUser.fromJson(json[r'user']),
        token: json[r'token'],
    );

  static List<AuthAuthByFirebaseRResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthAuthByFirebaseRResponse>[]
      : json.map((v) => AuthAuthByFirebaseRResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, AuthAuthByFirebaseRResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthAuthByFirebaseRResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AuthAuthByFirebaseRResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AuthAuthByFirebaseRResponse-objects as value to a dart map
  static Map<String, List<AuthAuthByFirebaseRResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthAuthByFirebaseRResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AuthAuthByFirebaseRResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


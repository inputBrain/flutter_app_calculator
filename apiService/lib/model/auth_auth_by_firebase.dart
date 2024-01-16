//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthAuthByFirebase {
  /// Returns a new [AuthAuthByFirebase] instance.
  AuthAuthByFirebase({
    @required this.firebaseToken,
  });

  String firebaseToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthAuthByFirebase &&
     other.firebaseToken == firebaseToken;

  @override
  int get hashCode =>
    (firebaseToken == null ? 0 : firebaseToken.hashCode);

  @override
  String toString() => 'AuthAuthByFirebase[firebaseToken=$firebaseToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (firebaseToken != null) {
      json[r'firebaseToken'] = firebaseToken;
    }
    return json;
  }

  /// Returns a new [AuthAuthByFirebase] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthAuthByFirebase fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthAuthByFirebase(
        firebaseToken: json[r'firebaseToken'],
    );

  static List<AuthAuthByFirebase> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthAuthByFirebase>[]
      : json.map((v) => AuthAuthByFirebase.fromJson(v)).toList(growable: true == growable);

  static Map<String, AuthAuthByFirebase> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthAuthByFirebase>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AuthAuthByFirebase.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AuthAuthByFirebase-objects as value to a dart map
  static Map<String, List<AuthAuthByFirebase>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthAuthByFirebase>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AuthAuthByFirebase.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


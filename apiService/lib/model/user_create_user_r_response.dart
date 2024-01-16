//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCreateUserRResponse {
  /// Returns a new [UserCreateUserRResponse] instance.
  UserCreateUserRResponse({
    this.user,
  });

  PayloadUserUser user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCreateUserRResponse &&
     other.user == user;

  @override
  int get hashCode =>
    (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'UserCreateUserRResponse[user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [UserCreateUserRResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserCreateUserRResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserCreateUserRResponse(
        user: PayloadUserUser.fromJson(json[r'user']),
    );

  static List<UserCreateUserRResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserCreateUserRResponse>[]
      : json.map((v) => UserCreateUserRResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserCreateUserRResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserCreateUserRResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserCreateUserRResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserCreateUserRResponse-objects as value to a dart map
  static Map<String, List<UserCreateUserRResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserCreateUserRResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserCreateUserRResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


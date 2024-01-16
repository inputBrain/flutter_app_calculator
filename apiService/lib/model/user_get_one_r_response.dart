//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserGetOneRResponse {
  /// Returns a new [UserGetOneRResponse] instance.
  UserGetOneRResponse({
    this.ussr,
  });

  PayloadUserUser ussr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserGetOneRResponse &&
     other.ussr == ussr;

  @override
  int get hashCode =>
    (ussr == null ? 0 : ussr.hashCode);

  @override
  String toString() => 'UserGetOneRResponse[ussr=$ussr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ussr != null) {
      json[r'ussr'] = ussr;
    }
    return json;
  }

  /// Returns a new [UserGetOneRResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserGetOneRResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserGetOneRResponse(
        ussr: PayloadUserUser.fromJson(json[r'ussr']),
    );

  static List<UserGetOneRResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserGetOneRResponse>[]
      : json.map((v) => UserGetOneRResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserGetOneRResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserGetOneRResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserGetOneRResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserGetOneRResponse-objects as value to a dart map
  static Map<String, List<UserGetOneRResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserGetOneRResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserGetOneRResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


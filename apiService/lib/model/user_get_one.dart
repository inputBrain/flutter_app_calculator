//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserGetOne {
  /// Returns a new [UserGetOne] instance.
  UserGetOne({
    this.userId,
  });

  int userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserGetOne &&
     other.userId == userId;

  @override
  int get hashCode =>
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'UserGetOne[userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [UserGetOne] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserGetOne fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserGetOne(
        userId: json[r'userId'],
    );

  static List<UserGetOne> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserGetOne>[]
      : json.map((v) => UserGetOne.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserGetOne> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserGetOne>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserGetOne.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserGetOne-objects as value to a dart map
  static Map<String, List<UserGetOne>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserGetOne>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserGetOne.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


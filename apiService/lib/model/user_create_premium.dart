//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCreatePremium {
  /// Returns a new [UserCreatePremium] instance.
  UserCreatePremium({
    @required this.userId,
    @required this.startedAt,
    @required this.endedAt,
  });

  int userId;

  int startedAt;

  int endedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCreatePremium &&
     other.userId == userId &&
     other.startedAt == startedAt &&
     other.endedAt == endedAt;

  @override
  int get hashCode =>
    (userId == null ? 0 : userId.hashCode) +
    (startedAt == null ? 0 : startedAt.hashCode) +
    (endedAt == null ? 0 : endedAt.hashCode);

  @override
  String toString() => 'UserCreatePremium[userId=$userId, startedAt=$startedAt, endedAt=$endedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (startedAt != null) {
      json[r'startedAt'] = startedAt;
    }
    if (endedAt != null) {
      json[r'endedAt'] = endedAt;
    }
    return json;
  }

  /// Returns a new [UserCreatePremium] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserCreatePremium fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserCreatePremium(
        userId: json[r'userId'],
        startedAt: json[r'startedAt'],
        endedAt: json[r'endedAt'],
    );

  static List<UserCreatePremium> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserCreatePremium>[]
      : json.map((v) => UserCreatePremium.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserCreatePremium> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserCreatePremium>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserCreatePremium.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserCreatePremium-objects as value to a dart map
  static Map<String, List<UserCreatePremium>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserCreatePremium>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserCreatePremium.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


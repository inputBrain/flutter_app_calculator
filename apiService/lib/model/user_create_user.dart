//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCreateUser {
  /// Returns a new [UserCreateUser] instance.
  UserCreateUser({
    this.firstName,
    this.lastName,
    this.phone,
  });

  String firstName;

  String lastName;

  String phone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCreateUser &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.phone == phone;

  @override
  int get hashCode =>
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (phone == null ? 0 : phone.hashCode);

  @override
  String toString() => 'UserCreateUser[firstName=$firstName, lastName=$lastName, phone=$phone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
    return json;
  }

  /// Returns a new [UserCreateUser] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserCreateUser fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserCreateUser(
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        phone: json[r'phone'],
    );

  static List<UserCreateUser> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserCreateUser>[]
      : json.map((v) => UserCreateUser.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserCreateUser> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserCreateUser>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserCreateUser.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserCreateUser-objects as value to a dart map
  static Map<String, List<UserCreateUser>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserCreateUser>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserCreateUser.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayloadUserUser {
  /// Returns a new [PayloadUserUser] instance.
  PayloadUserUser({
    @required this.id,
    @required this.firstName,
    @required this.lastName,
    @required this.hasPremium,
  });

  int id;

  String firstName;

  String lastName;

  bool hasPremium;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PayloadUserUser &&
     other.id == id &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.hasPremium == hasPremium;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (hasPremium == null ? 0 : hasPremium.hashCode);

  @override
  String toString() => 'PayloadUserUser[id=$id, firstName=$firstName, lastName=$lastName, hasPremium=$hasPremium]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (hasPremium != null) {
      json[r'hasPremium'] = hasPremium;
    }
    return json;
  }

  /// Returns a new [PayloadUserUser] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PayloadUserUser fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PayloadUserUser(
        id: json[r'id'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        hasPremium: json[r'hasPremium'],
    );

  static List<PayloadUserUser> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PayloadUserUser>[]
      : json.map((v) => PayloadUserUser.fromJson(v)).toList(growable: true == growable);

  static Map<String, PayloadUserUser> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PayloadUserUser>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PayloadUserUser.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PayloadUserUser-objects as value to a dart map
  static Map<String, List<PayloadUserUser>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PayloadUserUser>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PayloadUserUser.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


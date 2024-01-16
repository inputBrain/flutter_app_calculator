//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PayloadUserPremium {
  /// Returns a new [PayloadUserPremium] instance.
  PayloadUserPremium({
    @required this.id,
    @required this.user,
    @required this.startedAt,
    @required this.endedAt,
  });

  int id;

  PayloadUserUser user;

  int startedAt;

  int endedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PayloadUserPremium &&
     other.id == id &&
     other.user == user &&
     other.startedAt == startedAt &&
     other.endedAt == endedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (startedAt == null ? 0 : startedAt.hashCode) +
    (endedAt == null ? 0 : endedAt.hashCode);

  @override
  String toString() => 'PayloadUserPremium[id=$id, user=$user, startedAt=$startedAt, endedAt=$endedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (startedAt != null) {
      json[r'startedAt'] = startedAt;
    }
    if (endedAt != null) {
      json[r'endedAt'] = endedAt;
    }
    return json;
  }

  /// Returns a new [PayloadUserPremium] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PayloadUserPremium fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PayloadUserPremium(
        id: json[r'id'],
        user: PayloadUserUser.fromJson(json[r'user']),
        startedAt: json[r'startedAt'],
        endedAt: json[r'endedAt'],
    );

  static List<PayloadUserPremium> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PayloadUserPremium>[]
      : json.map((v) => PayloadUserPremium.fromJson(v)).toList(growable: true == growable);

  static Map<String, PayloadUserPremium> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PayloadUserPremium>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PayloadUserPremium.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PayloadUserPremium-objects as value to a dart map
  static Map<String, List<PayloadUserPremium>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PayloadUserPremium>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PayloadUserPremium.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


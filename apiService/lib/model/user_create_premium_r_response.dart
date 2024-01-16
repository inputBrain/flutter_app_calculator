//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCreatePremiumRResponse {
  /// Returns a new [UserCreatePremiumRResponse] instance.
  UserCreatePremiumRResponse({
    this.premium,
  });

  PayloadUserPremium premium;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCreatePremiumRResponse &&
     other.premium == premium;

  @override
  int get hashCode =>
    (premium == null ? 0 : premium.hashCode);

  @override
  String toString() => 'UserCreatePremiumRResponse[premium=$premium]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (premium != null) {
      json[r'premium'] = premium;
    }
    return json;
  }

  /// Returns a new [UserCreatePremiumRResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserCreatePremiumRResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserCreatePremiumRResponse(
        premium: PayloadUserPremium.fromJson(json[r'premium']),
    );

  static List<UserCreatePremiumRResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserCreatePremiumRResponse>[]
      : json.map((v) => UserCreatePremiumRResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserCreatePremiumRResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserCreatePremiumRResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserCreatePremiumRResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserCreatePremiumRResponse-objects as value to a dart map
  static Map<String, List<UserCreatePremiumRResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserCreatePremiumRResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserCreatePremiumRResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


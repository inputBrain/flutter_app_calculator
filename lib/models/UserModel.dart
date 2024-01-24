class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final String avatarUrl;
  final bool hasPremium;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.avatarUrl,
    required this.hasPremium,
  });
}

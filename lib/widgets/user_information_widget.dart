import 'package:calculator_app/models/UserModel.dart';
import 'package:flutter/material.dart';

class UserInformationWidget extends StatelessWidget {
  final UserModel? user;

  const UserInformationWidget({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.topRight,
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(user?.avatarUrl ?? ''),
      ),
    );
  }
}

// import 'package:calculator_app/models/UserModel.dart';
// import 'package:flutter/material.dart';
//
// class UserInformationWidget extends StatelessWidget {
//   final UserModel? user;
//
//   const UserInformationWidget({Key? key, this.user}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     String title = user?.hasPremium == true ? 'Premium User' : 'Regular User';
//
//     return Container(
//       padding: const EdgeInsets.all(8.0),
//       alignment: Alignment.topRight,
//       child: Column(
//         children: [
//           CircleAvatar(
//             radius: 20,
//             backgroundImage: NetworkImage(user?.avatarUrl ?? ''),
//           ),
//           Text(title),
//         ],
//       ),
//     );
//   }
// }

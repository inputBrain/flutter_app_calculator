import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:calculator_app/services/firebase_service.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            UserCredential? userCredential = await FirebaseAuthService.signInWithGoogle();

            if (userCredential != null) {
              String? firebaseToken = await FirebaseAuthService.getFirebaseToken(userCredential.user!);
              await FirebaseAuthService.sendFirebaseTokenToServer(firebaseToken!);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const CalculatorScreen(),
              ));
            }
          },
          child: const Text('Sign in with Google'),
        ),
      ),
    );
  }
}

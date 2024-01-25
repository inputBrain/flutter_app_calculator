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
        child: ElevatedButton.icon(
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
          icon: Image.asset(
            'images/google_icon.png',
            width: 50,
            height: 50,
          ),
          label: const Text('Sign in with Google'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

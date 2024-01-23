import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class FirebaseAuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleSignInAuthentication =
      await googleSignInAccount?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e) {
      print('Error signing in with Google: $e');
      return null;
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static User? getCurrentUser() {
    return _auth.currentUser;
  }

  static Future<String?> getFirebaseToken(User user) async {
    return await user.getIdToken();
  }

  static Future<void> sendFirebaseTokenToServer(String firebaseToken) async {
    final apiUrl = 'http://10.0.2.2:5500/api/Auth/AuthByFirebase';

    Future<void> sendPostAsync() async {
      try {
        var response = await http.post(
            Uri.parse(apiUrl),
            headers: {
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              "firebaseToken": firebaseToken,
            }));

        if (response.statusCode == 200) {
          print('Firebase token sent successfully');
        } else {
          print('Error sending Firebase token to server. Status code: ${response.statusCode}');
        }
      } catch (e) {
        print('Error sending Firebase token to server: $e');
      }
    }

    // Call the function to send the request
    await sendPostAsync();
  }

  static Stream<User?> authStateChanges() {
    return _auth.authStateChanges();
  }
}
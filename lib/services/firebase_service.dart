import 'package:http/http.dart' as http;
import '../imports.dart';

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

  static Future<UserModel?> sendFirebaseTokenToServer(String firebaseToken) async {
    const apiUrl = 'http://10.0.2.2:5500/api/Auth/AuthByFirebase';

    Future<UserModel?> sendPostAsync() async {
      try {
        var response = await http.post(
          Uri.parse(apiUrl),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            "firebaseToken": firebaseToken,
          }),
        );

        if (response.statusCode == 200) {
          print('Firebase token sent successfully');
          var responseData = jsonDecode(response.body);


          if (responseData.containsKey("user") && responseData["user"] is Map<String, dynamic>) {
            var userJson = responseData["user"];

            var userModel = UserModel(
              id: userJson['id'],
              firstName: userJson['firstName'],
              lastName: userJson['lastName'],
              avatarUrl: userJson['avatarUrl'],
              hasPremium: userJson['hasPremium'],
            );
            return userModel;
          } else {
            print('Error: Invalid JSON format or missing "user" data in response');
            return null;
          }
        } else {
          print('Error sending Firebase token to server. Status code: ${response.statusCode}');
          return null;
        }

      } catch (e) {
        print('Error sending Firebase token to server: $e');
        return null;
      }
    }

    return await sendPostAsync();
  }


  static Stream<User?> authStateChanges() {
    return _auth.authStateChanges();
  }
}

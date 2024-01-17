import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late BannerAd myBanner;
  bool isAdLoaded = false;
  bool adsOn = true;

  @override
  void initState() {
    super.initState();
    _loadAdsSetting();
    _initBannerAd();
  }

  Future<void> _loadAdsSetting() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      adsOn = prefs.getBool('adsOn') ?? true;
      if (adsOn) {
        _initBannerAd();
      }
    });
  }

  void _initBannerAd() {
    myBanner = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );

    myBanner.load();
  }

  @override
  void dispose() {
    myBanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var calc = const SimpleCalculator(
      value: 0,
      theme: CalculatorThemeData(
        borderColor: Colors.black,
        borderWidth: 2,
        displayColor: Colors.black,
        displayStyle: TextStyle(fontSize: 80, color: Colors.yellow),
        expressionColor: Colors.indigo,
        expressionStyle: TextStyle(fontSize: 20, color: Colors.white),
        operatorColor: Colors.pink,
        operatorStyle: TextStyle(fontSize: 30, color: Colors.white),
        commandColor: Colors.orange,
        commandStyle: TextStyle(fontSize: 30, color: Colors.white),
        numColor: Colors.grey,
        numStyle: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SettingsScreen(),
              ));
              _loadAdsSetting();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: calc,
            ),
          ),
          if (isAdLoaded && adsOn)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: myBanner.size.width.toDouble(),
                height: myBanner.size.height.toDouble(),
                child: AdWidget(ad: myBanner),
              ),
            ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                // Call the _signInWithGoogle method to sign in with Google
                UserCredential? userCredential = await _signInWithGoogle();

                // After successful sign-in, send the Firebase token to your server
                if (userCredential != null) {
                  String? firebaseToken = await userCredential.user!.getIdToken();
                  await _sendFirebaseTokenToServer(firebaseToken!);
                }
              },
              child: Text('Sign in with Google'),
            ),
          ),
        ],
      ),
    );
  }

  Future<UserCredential?> _signInWithGoogle() async {
    try {
      // Initialize Google Sign-In
      final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;

      // Create GoogleAuthProvider credentials
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken,
      );

      // Sign in with GoogleAuthProvider credentials
      final UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(credential);

      // Return the sign-in result
      return authResult;
    } catch (e) {
      // Handle errors
      print('Error signing in with Google: $e');
      return null;
    }
  }

  Future<void> _sendFirebaseTokenToServer(String firebaseToken) async {
    Uri url = Uri.parse('http://localhost:5500/api/Auth/AuthByFirebase?firebaseToken=$firebaseToken');

    try {
      // Make a POST request to the server
      var response = await http.post(url);

      // Check the response status
      if (response.statusCode == 200) {
        print('Firebase token sent successfully');
      } else {
        print('Error sending Firebase token to server. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any errors here
      print('Error sending Firebase token to server: $e');
    }
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool adsOn = true;

  @override
  void initState() {
    super.initState();
    _loadAdsSetting();
  }

  Future<void> _loadAdsSetting() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      adsOn = prefs.getBool('adsOn') ?? true;
    });
  }

  Future<void> _saveAdsSetting(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('adsOn', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Ads'),
            subtitle: const Text('Turn this on or off to enable ads'),
            value: adsOn,
            activeColor: Colors.green,
            inactiveTrackColor: Colors.grey,
            onChanged: (bool value) async {
              setState(() {
                adsOn = value;
              });
              await _saveAdsSetting(value);
            },
          ),
        ],
      ),
    );
  }
}

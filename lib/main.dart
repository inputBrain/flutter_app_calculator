import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

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

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

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
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SettingsScreen(),
              ));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          child: calc,
        ),
      ),
    );
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

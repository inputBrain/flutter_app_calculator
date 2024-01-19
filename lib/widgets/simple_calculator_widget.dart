import 'package:calculator_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:calculator_app/services/ads_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart'; 

class SimpleCalculatorWidget extends StatelessWidget {
  const SimpleCalculatorWidget({Key? key}) : super(key: key);

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
              AdsService.initializeBannerAd(); // Initialize ads after settings update
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
          if (AdsService.isAdLoaded && AdsService.adsOn)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: AdsService.myBanner.size.width.toDouble(),
                height: AdsService.myBanner.size.height.toDouble(),
                child: AdWidget(ad: AdsService.myBanner),
              ),
            ),
        ],
      ),
    );
  }
}
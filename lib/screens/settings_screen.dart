import 'package:flutter/material.dart';
import 'package:calculator_app/services/ads_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    AdsService.loadAdsSetting();
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
              await AdsService.saveAdsSetting(value);
              if (value) {
                AdsService.initializeBannerAd();
              } else {
                AdsService.disposeBannerAd();
              }
            },
          ),
        ],
      ),
    );
  }
}

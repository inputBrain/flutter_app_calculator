import 'package:calculator_app/models/UserModel.dart';
import 'package:calculator_app/screens/settings_screen.dart';
import 'package:calculator_app/services/ads_service.dart';
import 'package:calculator_app/widgets/simple_calculator_widget.dart';
import 'package:calculator_app/widgets/user_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class CalculatorScreen extends StatefulWidget {
  final UserModel? user;

  const CalculatorScreen({super.key, this.user});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  void initState() {
    super.initState();
    AdsService.loadAdsSetting();
    AdsService.initializeBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SimpleCalculatorWidget()
    );
  }
}

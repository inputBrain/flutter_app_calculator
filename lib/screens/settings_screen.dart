import '../imports.dart';

class SettingsScreen extends StatefulWidget {
  final UserModel? userModel;
  const SettingsScreen({Key? key, this.userModel}) : super(key: key);

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
      if (widget.userModel?.hasPremium == true) {
        adsOn = false;
      }
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
              if (value) {
                AdsService.initializeBannerAd();
              } else {
                AdsService.disposeBannerAd();
              }
            },
          ),
          ElevatedButton(
            onPressed: () async {
              bool success = await AdsService.buyPremium1Month();
              if (success) {
                // Успешная покупка, выполните необходимые действия
              }
            },
            child: const Text('Buy premium for 1 month'),
          ),
          ElevatedButton(
            onPressed: () async {
              bool success = await AdsService.buyPremium3Months();
              if (success) {
                // Успешная покупка, выполните необходимые действия
              }
            },
            child: const Text('Buy premium for 3 months'),
          ),
          ElevatedButton(
            onPressed: () async {
              bool success = await AdsService.buyPremium12Months();
              if (success) {
                // Успешная покупка, выполните необходимые действия
              }
            },
            child: const Text('Buy premium for 12 months'),
          ),
        ],
      ),
    );
  }
}
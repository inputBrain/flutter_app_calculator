import '../imports.dart';

class AdsService {
  static late BannerAd _bannerAd;
  static bool isAdLoaded = false;
  static bool adsOn = true;
  static BannerAd get getBanner => _bannerAd;


  static void initializeBannerAd() {
    _bannerAd = createBannerAd()
      ..load();
  }

  static BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isAdLoaded = true;
          print('Banner Ad loaded successfully.');
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          isAdLoaded = false;
          print('Failed to load banner ad: $error');
        },
      ),
    );
  }

  static void loadAdsSetting() async {
    final prefs = await SharedPreferences.getInstance();
    adsOn = prefs.getBool('adsOn') ?? true;

  }

  static Future<void> saveAdsSetting(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('adsOn', value);
  }


  static void disposeBannerAd() {
    _bannerAd.dispose();
  }


  //TODO:
  static Future<bool> buyPremium1Month() async {
    var firebaseUser = FirebaseAuthService.getCurrentUser();
    var userId = firebaseUser?.uid;

    try {
      var purchaseDetails = await Purchases.purchasePackage("" as Package);
      return purchaseDetails != null;
    } catch (e) {
      print("Error purchasing premium 1 month: $e");
      return false;
    }
  }

  //TODO:
  static Future<bool> buyPremium3Months() async {
    try {
      var purchaseDetails = await Purchases.purchasePackage("pro_three_month:p3m" as Package);
      return purchaseDetails != null;
    } catch (e) {
      print("Error purchasing premium 3 months: $e");
      return false;
    }
  }

  //TODO
  static Future<bool> buyPremium12Months() async {
    try {
      var purchaseDetails = await Purchases.purchasePackage("pro_12_month:p12m" as Package);
      return purchaseDetails != null;
    } catch (e) {
      print("Error purchasing premium 12 months: $e");
      return false;
    }
  }
}
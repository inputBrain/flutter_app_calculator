import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsService {
  static late BannerAd _bannerAd;
  static bool isAdLoaded = false;
  static bool adsOn = true;

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

  static void disposeBannerAd() {
    _bannerAd.dispose();
  }
 
  static BannerAd get myBanner => _bannerAd;
}
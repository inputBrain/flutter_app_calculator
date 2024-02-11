import 'package:flutter/services.dart';

import '../imports.dart';

//TODO:
void purchasePackage (Package package) async {
  var firebaseUser = FirebaseAuthService.getCurrentUser();


  var loginResult = await Purchases.logIn(firebaseUser!.uid);

  try {
    CustomerInfo customerInfo = await Purchases.purchasePackage(package);
    if (customerInfo.entitlements.all[""]!.isActive) {

    }
  } on PlatformException catch (e) {
    var errorCode = PurchasesErrorHelper.getErrorCode(e);
    if (errorCode != PurchasesErrorCode.purchaseCancelledError) {
      // showError(e);
    }
}


}
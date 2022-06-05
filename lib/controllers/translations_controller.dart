import 'dart:ui';
import 'package:get/get.dart';

class MessagesController extends GetxController {
  void changeLanguage(String languageCode, String countryCode){
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }

  selectLanguage(String? item) {
    if (item == 'English') {
      changeLanguage('en_US', 'id');
    } else if (item == "Indonesia") {
      changeLanguage('id', 'en_US');
    }
  }
}
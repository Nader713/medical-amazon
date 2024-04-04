import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocale extends GetxController {
  void changeLanguage(String lang) {
    Locale locale = Locale(lang);
    Get.updateLocale(locale);
  }
}

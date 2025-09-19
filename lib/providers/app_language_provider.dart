import 'package:flutter/material.dart';
class LanguageProvider extends ChangeNotifier {
  String appLanguage = 'en';
  void changeLanguage (String newLanguage){
    if(appLanguage == newLanguage){
      return;
    }else {
      appLanguage = newLanguage;
      notifyListeners();
    }
  }
}
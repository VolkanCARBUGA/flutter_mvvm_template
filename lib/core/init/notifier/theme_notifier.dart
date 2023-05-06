import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/init/theme/app_theme_light.dart';
import '../../constants/enums/app_theme_enum.dart';

class ThemeNotifier extends ChangeNotifier {
   ThemeData  _currentTime= AppThemeLight.instance.themeData;
  ThemeData get currentTime=>AppThemeLight.instance.themeData;
  int value=5;
  void changeValue(AppThemes  theme){
    if (theme==AppThemes.LIGHT){ 
    _currentTime=ThemeData.light();
    }else{
      _currentTime=ThemeData.dark();
    }
    value++;
    notifyListeners();
  }

}
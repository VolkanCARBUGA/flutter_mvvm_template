import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/init/theme/app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight _instance =AppThemeLight._init();
    static AppThemeLight get instance {
    if (_instance == null) {
     _instance = AppThemeLight._init();
     }
    return _instance ;
    }
    AppThemeLight._init();
   
    ThemeData get themeData=>ThemeData.light();
       
    
} 
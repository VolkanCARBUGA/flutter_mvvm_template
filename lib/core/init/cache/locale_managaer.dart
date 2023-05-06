import 'package:flutter_mvvm_template/core/constants/enums/locale_keys_enum.dart';
import 'package:flutter_mvvm_template/core/init/language/locale_keys.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalManager {
  static LocalManager _instance = LocalManager._init();
  SharedPreferences? _preferences;
  static LocalManager get instance {
    if (_instance == null) {
      _instance = LocalManager._init();
    }
    return _instance;
  }

  LocalManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static preferncesInit() async {
    if (instance._preferences == null) {
      
      instance._preferences = await SharedPreferences.getInstance();
    }
   // instance._preferences.set
    return;
  }
  void setSring(PreferancesKeys keys,String value) {
    _preferences?.setString(keys.toString(), value);
  }
  String getStringValue(PreferancesKeys keys) => _preferences?.getString(keys.toString()) ?? '';
}

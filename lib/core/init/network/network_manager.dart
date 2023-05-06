import 'package:dio/dio.dart';
import 'package:flutter_mvvm_template/core/constants/enums/locale_keys_enum.dart';
import 'package:flutter_mvvm_template/core/init/cache/locale_managaer.dart';
import 'package:flutter_mvvm_template/core/init/language/locale_keys.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkManager {
  static NetworkManager _instance = NetworkManager._init();
  static NetworkManager get instance {
    if (_instance == null) {
      _instance = NetworkManager._init();
    }
    return _instance;
  }

  NetworkManager._init() {
    final baseUrl = BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com',
        headers: {'val': LocalManager.instance.getStringValue(PreferancesKeys.TOKEN)},);
    dio = Dio(baseUrl);
  }
  var dio = Dio();
}

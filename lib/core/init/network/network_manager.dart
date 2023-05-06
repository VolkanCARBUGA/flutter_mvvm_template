import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_mvvm_template/core/base/model/base_model.dart';
import 'package:flutter_mvvm_template/core/constants/enums/locale_keys_enum.dart';
import 'package:flutter_mvvm_template/core/init/cache/locale_managaer.dart';
import 'package:flutter_mvvm_template/core/init/language/locale_keys.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../base/model/base_error.dart';

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
      headers: {
        'val': LocalManager.instance.getStringValue(PreferancesKeys.TOKEN)
      },
    );
    _dio = Dio(baseUrl);
    _dio.interceptors.add(InterceptorsWrapper(
      
    ));
  }
  var _dio = Dio();
  Future dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        if (responseBody is List) {
          responseBody.map((e) => model.fromJson(e).toList());
        } else if (responseBody is Map) {}
        return responseBody;

      default:
    }
  }
}

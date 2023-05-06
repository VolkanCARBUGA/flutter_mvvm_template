import 'package:flutter/material.dart';

import 'I_navigation_service.dart';

class NavigationService implements INavigationService {
  static NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  NavigationService._init();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Future<void> navigateToPage(String Path, object) async {
    await navigatorKey.currentState?.pushNamed(Path, arguments: object);
  }

  @override
  Future<void> navigateToPageClear(String Path, object) async {
    await navigatorKey.currentState?.pushNamedAndRemoveUntil(Path, (route) => false);
  }
}

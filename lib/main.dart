import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/constants/app/app_constants.dart';
import 'package:flutter_mvvm_template/core/init/cache/locale_managaer.dart';
import 'package:flutter_mvvm_template/core/init/language/language_manager.dart';
import 'package:flutter_mvvm_template/core/init/navigation/navigation_route.dart';
import 'package:flutter_mvvm_template/core/init/navigation/navigation_service.dart';
import 'package:flutter_mvvm_template/core/init/notifier/provider_list.dart';
import 'package:flutter_mvvm_template/core/init/notifier/theme_notifier.dart';
import 'package:flutter_mvvm_template/view/authhenticate/test/view/test_view.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    LocalManager.preferncesInit());
    MultiProvider(
    providers: ApplicationProvider.instance.dependItems,
    child: EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationsConstants.LANG_ASSET_PATH,
      child: MyApp(),
    ),
  );
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTime,
      home: const TestView(),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ));
  }
}

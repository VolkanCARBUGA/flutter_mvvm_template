import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/extension/strring_extension.dart';
class LocaleText extends StatelessWidget {
  String value;
   LocaleText({super.key,required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(value.localize),
      ),
    );
  }
}
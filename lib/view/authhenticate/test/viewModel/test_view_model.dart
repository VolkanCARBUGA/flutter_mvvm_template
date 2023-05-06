import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/enums/app_theme_enum.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  @observable
  int number=0;
  @action
  void incrementNumber(){
    number++;
  }
  void changeTheme(BuildContext context){
    Provider.of<ThemeNotifier>(context, listen: false).changeValue(AppThemes.DARK);
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/init/network/network_manager.dart';
import 'package:flutter_mvvm_template/core/init/notifier/theme_notifier.dart';
import 'package:flutter_mvvm_template/view/authhenticate/test/model/test_model.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/enums/app_theme_enum.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  @observable
  bool isLoading=true;
  @observable
  int number=0;
  @action
  void incrementNumber(){
    number++;
  }
  void changeTheme(BuildContext context){
    Provider.of<ThemeNotifier>(context, listen: false).changeValue(AppThemes.DARK);
  }
  @action
  Future<void> getSimpleRequest() async {
    isLoading=true;
 final list=  await  NetworkManager.instance.dioGet<TestModel>("x", TestModel(1,2,false,"tittle"));
 if (list is List) {
   
 }
    isLoading=false;
  }
}
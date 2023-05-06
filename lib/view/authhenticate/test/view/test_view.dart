import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mvvm_template/core/base/state/base_state.dart';
import 'package:flutter_mvvm_template/core/base/view/base_view.dart';
import 'package:flutter_mvvm_template/core/extension/strring_extension.dart';
import 'package:flutter_mvvm_template/core/init/language/language_manager.dart';
import 'package:flutter_mvvm_template/view/authhenticate/test/viewModel/test_view_model.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/language/locale_keys.g.dart';
class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
 
  late TestViewModel  testViewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      builder: (context, model) {
        return Container();
      }, 
      onDispose: () { 

       }, onModelReady: ( model) { 
testViewModel=model;
        }, tModel:TestViewModel(),
    );
  }
  Widget get scaffoldBody=>Scaffold(
    appBar: AppBar(title: Text(LocaleKeys.welcome.localize),
    actions: [IconButton(onPressed: () {
      context.setLocale(LanguageManager.instance.mLocale);
    }, icon: const Icon(Icons.change_history_sharp))],
    
    ),
    floatingActionButton:floatingActionButtonIncrement ,
    body: Text(testViewModel.number.toString())
    );
 FloatingActionButton get floatingActionButtonIncrement{
   return FloatingActionButton(
     onPressed: (){
       testViewModel.incrementNumber();
     }
   );
 }
 Widget get textNumber{
   return Observer(builder: (BuildContext context) { 
 return Text(testViewModel.number.toString());
    },
    );
 }
}
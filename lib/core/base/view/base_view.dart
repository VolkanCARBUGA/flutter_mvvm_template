import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  Widget Function(BuildContext context, T model) builder;
  T tModel;
  Function(T model) onModelReady;
  VoidCallback onDispose;
  BaseView(
      {super.key,
      required this.onModelReady,
      required this.onDispose,
      required this.builder,
       required this.tModel});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(widget.tModel);
    }
    
    super.initState();
  }

  @override
  void dispose() {
   
   if (widget.onDispose != null) {
     widget.onDispose();
     
   }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.tModel);
  }
}

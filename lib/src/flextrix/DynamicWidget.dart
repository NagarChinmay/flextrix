import 'package:flextrix/src/layout/src/format.dart';
import 'package:flextrix/src/layout/src/layout.dart';
import 'package:flutter/cupertino.dart';

extension DynamicWidget on Widget{
  Widget addFlextrix({Key? key, LayoutFormat? format}){
    return Layout(key: key, format: format,child: this,);
  }
}
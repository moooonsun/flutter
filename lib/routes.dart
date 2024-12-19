import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';
import 'def/Def.dart';
import 'def/RowColumn.dart';
import 'def/BoxCon.dart';
import 'def/Con2.dart';
import 'def2/Counter.dart';
import 'def2/ParentChild.dart';
import 'def2/FormW.dart';

//Java Map (HashMap Key, value)
final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/about': (context) => About(),
  '/def': (context) => Def(),
  '/rowColumn': (context) => RowColumn(),
  '/boxCon': (context) => BoxCon(),
  '/con2': (context) => Con2(),
  '/counter':(context) => Counter(),
  '/parent':(context) => ParentChild(),
  '/formW':(context) => FormW(),
};
import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';

//Java Map (HashMap Key, value)
final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/about': (context) => About()
};
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: routes,//기본적으로 routes기능이 존재, routes.dart에 설정 한 routes를 불러온다고 생각하면됨
    );
  }
}

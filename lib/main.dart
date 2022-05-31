import 'package:flutter/material.dart';
import 'package:layout/pages/inicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const _title = 'Tabbar teste';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:teste_1/primeira.dart';
import 'package:teste_1/segunda.dart';
import 'primeira.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Página Principal',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Primeira(),
  );
  }
  }
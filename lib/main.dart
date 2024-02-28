import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/home.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight Tracker',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.purple),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.purple),
          primarySwatch: Colors.purple),
      home: Home(),
    );
  }
}

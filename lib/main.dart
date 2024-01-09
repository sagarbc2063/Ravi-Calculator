import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravi_calculator/src/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}




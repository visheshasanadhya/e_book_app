//  flutter clean
//  flutter pub get
//  flutter build web --profile
//  flutter build web --profile --no-tree-shake-icons
//  flutter run -d chrome --profile

// main.dart
import 'package:e_book_app/Screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

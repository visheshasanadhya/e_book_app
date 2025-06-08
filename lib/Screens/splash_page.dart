import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_book_app/Helpers/common_widgets.dart';
import 'package:e_book_app/Helpers/utilities.dart';
import 'package:e_book_app/Screens/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Get.off(() => const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.image + "splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CommonWidgets().textWidget(
            text: "श्रीमद् भगवद् गीता",
            size: 25.0,
            weight: FontWeight.bold,
            align: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

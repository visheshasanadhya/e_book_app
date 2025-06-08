import 'package:flutter/material.dart';
import 'package:e_book_app/Helpers/common_widgets.dart';
import 'package:e_book_app/Helpers/utilities.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: AppColors.orangeColor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      title: CommonWidgets().textWidget(
        text: title,
        size: 25.0,
        color: AppColors.primaryColor,
        weight: FontWeight.bold,
        align: TextAlign.center,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

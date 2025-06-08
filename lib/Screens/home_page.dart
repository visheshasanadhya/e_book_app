import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:e_book_app/Helpers/common_widgets.dart';
import 'package:e_book_app/Helpers/custom_app_bar.dart';
import 'package:e_book_app/Helpers/drawer.dart';
import 'package:e_book_app/Screens/shlok_list_view.dart';
import 'package:e_book_app/Helpers/utilities.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<Map<String, dynamic>> readJson() async {
    final String response = await rootBundle.loadString('assets/shlokas.json');
    return json.decode(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const CustomAppBar(title: "श्रीमद् भगवद् गीता"),
      backgroundColor: AppColors.orangeColor,
      body: FutureBuilder<Map<String, dynamic>>(
        future: readJson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final chapters = snapshot.data!['hi'] as Map<String, dynamic>;
            final sortedKeys =
                chapters.keys.map((e) => int.tryParse(e) ?? 0).toList()..sort();

            return ListView.builder(
              itemCount: sortedKeys.length,
              itemBuilder: (context, index) {
                final chapNum = sortedKeys[index].toString();
                return GestureDetector(
                  onTap: () {
                    Get.to(ShlokaList(chapter: chapNum));
                  },
                  child: listWidget(shlokname: "अध्याय $chapNum"),
                );
              },
            );
          } else {
            return const Center(child: Text("No data available."));
          }
        },
      ),
    );
  }

  Widget listWidget({required String shlokname}) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
              radius: 5, backgroundColor: AppColors.primaryColor),
          CommonWidgets().textWidget(
            text: shlokname,
            size: 20.0,
            weight: FontWeight.w700,
          ),
          const CircleAvatar(
              radius: 5, backgroundColor: AppColors.primaryColor),
        ],
      ),
    );
  }
}

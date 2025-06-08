import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_book_app/Helpers/utilities.dart';
import 'package:e_book_app/Helpers/common_widgets.dart';
import 'package:e_book_app/Models/shloka_model.dart';

Future<List<Shloka>> loadShlokas(String chapter) async {
  final String jsonString = await rootBundle.loadString('assets/shlokas.json');
  final Map<String, dynamic> jsonData = jsonDecode(jsonString);
  List<dynamic> chapterShlokas = jsonData['hi'][chapter] ?? [];
  return chapterShlokas.map((s) => Shloka.fromJson(s)).toList();
}

class ShlokaList extends StatefulWidget {
  final String chapter;
  const ShlokaList({super.key, required this.chapter});

  @override
  _ShlokaListState createState() => _ShlokaListState();
}

class _ShlokaListState extends State<ShlokaList> {
  late Future<List<Shloka>> _shlokasFuture;

  @override
  void initState() {
    super.initState();
    _shlokasFuture = loadShlokas(widget.chapter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().textWidget(
          text: 'श्लोकास – अध्याय ${widget.chapter}',
          weight: FontWeight.w700,
          color: AppColors.primaryColor,
        ),
        backgroundColor: AppColors.orangeColor,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
      ),
      body: FutureBuilder<List<Shloka>>(
        future: _shlokasFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data found'));
          }
          final shlokas = snapshot.data!;
          return ListView.builder(
            itemCount: shlokas.length,
            itemBuilder: (context, index) {
              final s = shlokas[index];
              return ExpansionTile(
                title: Text("${s.num}: ${s.shloka.split('\n').first}"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shloka:\n${s.shloka}"),
                        const SizedBox(height: 8),
                        Text("Meaning:\n${s.meaning}"),
                        const SizedBox(height: 8),
                        Text("Synonyms:\n${s.synonyms}"),
                        const SizedBox(height: 8),
                        Text("Purport:\n${s.purport}"),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_test/app_const/app_const.dart';
import 'package:flutter_json_test/model/android_version.dart';

class OutputOnePage extends StatefulWidget {
  const OutputOnePage({super.key});

  @override
  State<OutputOnePage> createState() => _OutputOnePageState();
}

class _OutputOnePageState extends State<OutputOnePage> {
  String jsonText1 = '''
    [{"0":{"id":1,"title":"Gingerbread"},"1":{"id":2,"title":"Jellybean"},"3":{"id":3,"title":"KitKat"}},[{"id":4,"title":"Lollipop"},{"id":5,"title":"Pie"},{"id":6,"title":"Oreo"},{"id":7,"title":"Nougat"}]]
''';
  List<AndroidVerison> androidVersions_one = [];
  @override
  void initState() {
    super.initState();

    var jsonData = json.decode(jsonText1);

    for (var element in jsonData) {
      if (element is Map) {
        element.forEach((key, value) {
          androidVersions_one
              .add(AndroidVerison(id: value['id'], title: value['title']));
        });
      } else if (element is List) {
        for (var subElement in element) {
          androidVersions_one.add(
              AndroidVerison(id: subElement['id'], title: subElement['title']));
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColorOutPutPage,
      appBar: AppBar(
        title: Text("O U T P U T T W O"),
        centerTitle: true,
        backgroundColor: appBarColorOutPutPage,
      ),
      body: ListView.builder(
          itemCount: androidVersions_one.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(androidVersions_one[index].title.toString()),
                trailing: Image.asset("assets/food.png"),
              ),
            );
          }),
    );
  }
}

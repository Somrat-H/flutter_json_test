import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_test/app_const/app_const.dart';
import 'package:flutter_json_test/model/android_version.dart';

class OutputTowPage extends StatefulWidget {
  const OutputTowPage({super.key});

  @override
  State<OutputTowPage> createState() => _OutputTowPageState();
}

class _OutputTowPageState extends State<OutputTowPage> {
  String jsonText = '''
  [{"0":{"id":1,"title":"Gingerbread"},"1":{"id":2,"title":"Jellybean"},"3":{"id":3,"title":"KitKat"}},{"0":{"id":8,"title":"Froyo"},"2":{"id":9,"title":"Éclair"},"3":{"id":10,"title":"Donut"}},[{"id":4,"title":"Lollipop"},{"id":5,"title":"Pie"},{"id":6,"title":"Oreo"},{"id":7,"title":"Nougat"}]]
''';
  List<AndroidVerison> androidVersions = [];
  @override
  void initState() {
    super.initState();

    var jsonData = json.decode(jsonText);

    for (var element in jsonData) {
      if (element is Map) {
        element.forEach((key, value) {
          androidVersions
              .add(AndroidVerison(id: value['id'], title: value['title']));
        });
      } else if (element is List) {
        for (var subElement in element) {
          androidVersions.add(
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
        title: const Text("O U T P U T O N E"),
        centerTitle: true,
        backgroundColor: appBarColorOutPutPage,
      ),
      body: ListView.builder(
          itemCount: androidVersions.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(androidVersions[index].title.toString()),
                trailing: Image.asset("assets/food.png"),
              ),
            );
          }),
    );
  }
}

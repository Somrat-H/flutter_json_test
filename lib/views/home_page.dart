import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Josn Test"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: (){

            },
            child: Text("Output 1"),
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){

            },
            child: Text("Output 2"),
            )
          ],
        ),
      ),
    );
  }
}
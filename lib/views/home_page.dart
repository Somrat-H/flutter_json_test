import 'package:flutter/material.dart';
import 'package:flutter_json_test/views/output_tow_page.dart';

import 'output_one_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 85, 59),
      appBar: AppBar(
          title: const Text("Flutter Json Test"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 105, 138, 108)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const OutputOnePage()));
              },
              child: const Text(
                "Output 1 -> ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const OutputTowPage()));
              },
              child: const Text(
                "Output 2 ->",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

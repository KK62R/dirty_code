import 'package:dirty_code/src/features/dirty_screen_1/presentation/dirty_screen_one.dart';
import 'package:flutter/material.dart';

class DirtyScreenTwo extends StatelessWidget {
  const DirtyScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #2"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            containerWidget(text1: ' Box A'),
            containerWidget(text1: 'B'),
            containerWidget(text1: 'C'),
            containerWidget(text1: 'D'),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.greenAccent),
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  Icon(Icons.eco),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Box D',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

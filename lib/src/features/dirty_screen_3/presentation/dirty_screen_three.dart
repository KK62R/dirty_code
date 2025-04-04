import 'package:flutter/material.dart';

class DirtyScreenThree extends StatelessWidget {
  const DirtyScreenThree({super.key});

  Widget alertContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orangeAccent,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.warning),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #3"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            alertContainer('Alert 1'),
            alertContainer('Alert 2'),
            alertContainer('Alert 3'),
            alertContainer('Alert 4'),
          ],
        ),
      ),
    );
  }
}

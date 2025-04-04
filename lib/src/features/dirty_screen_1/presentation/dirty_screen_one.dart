import 'package:flutter/material.dart';
class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #1"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            containerWidget(text1: "Box #1"),
            containerWidget(text1: "Box #2"),
            containerWidget(text1: "Box #3"),
            containerWidget(text1: "Box #4"),
          ],
        ),
      ),
    );
  }
}
class containerWidget extends StatelessWidget {
  //eigenschaften
  final String text1;
  //Konstrukt
  const containerWidget({super.key, required this.text1});
  //Methoden
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.bug_report),
          const SizedBox(
            width: 8,
          ),
          Text(
            text1,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}

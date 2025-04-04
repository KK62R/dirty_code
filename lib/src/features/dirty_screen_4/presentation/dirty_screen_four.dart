import 'package:flutter/material.dart';

class DirtyScreenFour extends StatelessWidget {
  const DirtyScreenFour({super.key});

  Widget customContainer({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
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
        title: const Text("Dirty Screen #4"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            customContainer(
                icon: Icons.home, text: 'Home', color: Colors.blueAccent),
            customContainer(
                icon: Icons.work, text: 'Work', color: Colors.greenAccent),
            customContainer(
                icon: Icons.school, text: 'School', color: Colors.orangeAccent),
            customContainer(
                icon: Icons.directions_bike,
                text: 'Bike',
                color: Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}

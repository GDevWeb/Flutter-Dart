import "package:flutter/material.dart";

class MealCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const MealCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors.blueGrey,
            ),
            const SizedBox(height: 10),
            Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

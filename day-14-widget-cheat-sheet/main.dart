import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CheatSheetDemo()));
}

class CheatSheetDemo extends StatelessWidget {
  const CheatSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget dasar')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Belajar Flutter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.code, color: Colors.cyan),
                    SizedBox(width: 12),
                    Expanded(child: Text('Mulai dari widget dasar')),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('Text · Padding · Row · Expanded · Card'),
          ],
        ),
      ),
    );
  }
}

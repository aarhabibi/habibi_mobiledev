import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LayoutDemo()));
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row dan Column')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Profil'),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Belajar Flutter lewat contoh layout sederhana.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Row membuat baris; Column membuat kolom.'),
          ],
        ),
      ),
    );
  }
}

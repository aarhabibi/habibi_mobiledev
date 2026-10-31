import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: OverflowDemo()));
}

class OverflowDemo extends StatelessWidget {
  const OverflowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contoh layout yang muat')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.info_outline),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Teks panjang ini mendapat batas lebar agar dapat '
                    'membungkus di dalam ruang yang tersedia.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            ...List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text('Bagian konten ${index + 1}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

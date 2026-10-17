import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SpacingDemo()));
}

class SpacingDemo extends StatelessWidget {
  const SpacingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jarak dan Container')),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.cyan.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text('Padding ada di dalam kartu.'),
        ),
      ),
    );
  }
}

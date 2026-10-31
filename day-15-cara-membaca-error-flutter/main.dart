import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: DebugLogDemo()));
}

class DebugLogDemo extends StatelessWidget {
  const DebugLogDemo({super.key});

  void _logTap() {
    debugPrint('Tombol contoh ditekan.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar membaca log')),
      body: Center(
        child: ElevatedButton(
          onPressed: _logTap,
          child: const Text('Tulis log'),
        ),
      ),
    );
  }
}

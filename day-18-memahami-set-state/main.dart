import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CounterDemo()));
}

class CounterDemo extends StatefulWidget {
  const CounterDemo({super.key});

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Memahami setState')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$_count', style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: [
                ElevatedButton(
                  onPressed: _increment,
                  child: const Text('Tambah'),
                ),
                OutlinedButton(
                  onPressed: _reset,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

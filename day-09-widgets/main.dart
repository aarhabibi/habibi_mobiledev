import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: WidgetDemo()));
}

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.waving_hand, size: 40),
                SizedBox(height: 12),
                Text('Halo, widget!'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

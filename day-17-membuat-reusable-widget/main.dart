import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ReusableWidgetDemo()));
}

class ReusableWidgetDemo extends StatelessWidget {
  const ReusableWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget reusable')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            InfoCard(
              icon: Icons.code,
              title: 'Belajar Dart',
              description: 'Pahami bahasa yang digunakan Flutter.',
            ),
            InfoCard(
              icon: Icons.widgets,
              title: 'Belajar Widget',
              description: 'Susun tampilan dari komponen UI.',
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

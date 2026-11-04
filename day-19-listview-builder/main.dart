import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TopicListPage()));
}

class TopicListPage extends StatelessWidget {
  const TopicListPage({super.key});

  @override
  Widget build(BuildContext context) {
    const topics = [
      'Dart vs Flutter',
      'Mengenal Widget',
      'Scaffold',
      'Row dan Column',
      'Padding dan Margin',
      'StatefulWidget',
      'ListView.builder',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Topik Flutter')),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(topics[index]),
            subtitle: const Text('Flutter Fundamentals'),
          );
        },
      ),
    );
  }
}

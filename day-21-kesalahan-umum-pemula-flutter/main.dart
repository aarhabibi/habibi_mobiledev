import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TaskListPage()));
}

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final List<String> _tasks = [
    'Baca pesan error',
    'Cek batas layout',
    'Gunakan ListView.builder',
  ];

  final List<bool> _isDone = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checklist Flutter')),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            title: _tasks[index],
            isDone: _isDone[index],
            onChanged: (value) {
              setState(() {
                _isDone[index] = value;
              });
            },
          );
        },
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.title,
    required this.isDone,
    required this.onChanged,
  });

  final String title;
  final bool isDone;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isDone,
      title: Text(title),
      onChanged: (value) {
        if (value != null) {
          onChanged(value);
        }
      },
    );
  }
}

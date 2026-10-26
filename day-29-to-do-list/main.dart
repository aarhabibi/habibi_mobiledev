import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class Task {
  Task(this.title);

  final String title;
  bool isDone = false;
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My To-do List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF35C7F3),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor:
            const Color(0xFF0B1020),
        useMaterial3: true,
      ),
      home: const TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final tasks = <Task>[];
  final controller = TextEditingController();

  void addTask() {
    final title = controller.text.trim();

    if (title.isEmpty) return;

    setState(() {
      tasks.add(Task(title));
    });

    controller.clear();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final completedCount =
        tasks.where((task) => task.isDone).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My To-do List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              onSubmitted: (_) => addTask(),
              decoration: InputDecoration(
                hintText: 'Apa yang ingin kamu kerjakan?',
                suffixIcon: IconButton(
                  onPressed: addTask,
                  icon: const Icon(Icons.add),
                  tooltip: 'Tambah tugas',
                ),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$completedCount dari ${tasks.length} tugas selesai',
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: tasks.isEmpty
                  ? const Center(
                      child: Text(
                        'Belum ada tugas. Yuk, tambahkan!',
                      ),
                    )
                  : ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        final task = tasks[index];

                        return CheckboxListTile(
                          value: task.isDone,
                          title: Text(task.title),
                          onChanged: (value) {
                            setState(() {
                              task.isDone = value ?? false;
                            });
                          },
                          secondary: IconButton(
                            icon: const Icon(
                              Icons.delete_outline,
                            ),
                            tooltip: 'Hapus tugas',
                            onPressed: () {
                              setState(() {
                                tasks.removeAt(index);
                              });
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

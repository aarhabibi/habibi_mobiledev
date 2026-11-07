import 'package:material_ui/material_ui.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.folder_open),
        title: Text(title),
        subtitle: const Text('Contoh komponen dari file terpisah'),
      ),
    );
  }
}

import 'package:material_ui/material_ui.dart';
import 'widgets/lesson_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Flutter')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: LessonCard(title: 'Struktur folder'),
      ),
    );
  }
}

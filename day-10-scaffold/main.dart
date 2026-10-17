import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: const Center(child: Text('Konten utama')),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: SizedBox(height: 48, child: Center(child: Text('Navigasi'))),
      ),
    );
  }
}

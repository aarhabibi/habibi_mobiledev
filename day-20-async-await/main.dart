import 'package:flutter/material.dart';

Future<String> loadTip() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Satu konsep kecil, lalu praktikkan.';
}

void main() {
  runApp(const MaterialApp(home: AsyncDemo()));
}

class AsyncDemo extends StatefulWidget {
  const AsyncDemo({super.key});

  @override
  State<AsyncDemo> createState() => _AsyncDemoState();
}

class _AsyncDemoState extends State<AsyncDemo> {
  String _message = 'Tekan tombol untuk memuat tip.';
  bool _isLoading = false;

  Future<void> _loadMessage() async {
    setState(() {
      _isLoading = true;
      _message = 'Sedang memuat...';
    });

    try {
      final tip = await loadTip();
      if (!mounted) return;

      setState(() {
        _message = tip;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;

      setState(() {
        _message = 'Tip gagal dimuat.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Async dan await')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_message, textAlign: TextAlign.center),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isLoading ? null : _loadMessage,
                child: Text(_isLoading ? 'Memuat...' : 'Muat tip'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

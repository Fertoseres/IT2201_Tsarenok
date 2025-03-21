import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главный экран')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Простой список'),
              onPressed: () => Navigator.pushNamed(context, '/simple'),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              child: const Text('Бесконечный список'),
              onPressed: () => Navigator.pushNamed(context, '/infinity'),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              child: const Text('Степени числа 2'),
              onPressed: () => Navigator.pushNamed(context, '/math'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Выбор Да/Нет'),
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/choice');
                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Вы выбрали: $result')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Выбор'), backgroundColor: Colors.green,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Да'),
              child: const Text('Да'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
     ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Нет'),
              child: const Text('Нет'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
     ),
            ),
          ],
        ),
      ),
    );
  }
}
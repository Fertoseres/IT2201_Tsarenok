import 'package:flutter/material.dart';

class SimpleListScreen extends StatelessWidget {
  const SimpleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Простой список')),
      body: ListView(
        children: const [
          ListTile(title: Text('Первая строка')),
          Divider(),
          ListTile(title: Text('Вторая строка')),
          Divider(),
          ListTile(title: Text('Третья строка')),
        ],
      ),
    );
  }
}
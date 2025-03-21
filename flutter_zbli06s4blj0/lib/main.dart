import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/simple_list_screen.dart';
import 'screens/infinity_list_screen.dart';
import 'screens/infinity_math_screen.dart';
import 'screens/choice_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Объединенная работа',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/simple': (context) => const SimpleListScreen(),
        '/infinity': (context) => const InfinityListScreen(),
        '/math': (context) => const InfinityMathScreen(),
        '/choice': (context) => const ChoiceScreen(),
      },
    );
  }
}
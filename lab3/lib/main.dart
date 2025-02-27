import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: IncrementScreen(),
    );
  }
}

class IncrementScreen extends StatefulWidget {
  @override
  _IncrementScreenState createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {
  int _counter = 0;

  void plus() {
    setState(() {
      _counter++;
    });
  }

  void minus() {
    setState(() {
      _counter--;
    });
  }

  void reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Инкремент'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Значение инкремента:',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: minus,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(60, 40)
                  ),
                   child: Icon(Icons.remove, size: 20),
                ),
                SizedBox(width: 0),
                ElevatedButton(
                  onPressed: plus,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(60, 40)
                  ),
                   child: Icon(Icons.add, size: 20),
                  ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: reset,
              child: Text(
                'Сбросить',
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 162, 164, 165)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  int _count = 0;

  void _incrementC() {
    setState(() {
      _count++;
    });
  }

  void _decrementC() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Счётчик'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _incrementC,
              ),
              Text("Сиздин саныныз  '${_count}'"),
              FloatingActionButton(
                  child: Icon(Icons.remove), onPressed: _decrementC)
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterPage();
  }
}

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green.shade800,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Counter App'), centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "You've clicked $counter many times",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: Text("Reset"),
            ),
          ],
        ),

        floatingActionButton: ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.plus_one),
        ),
      ),
    );
  }
}

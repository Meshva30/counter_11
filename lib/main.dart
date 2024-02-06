import 'package:flutter/material.dart';

void main() {
  runApp(Counting());
}

class Counting extends StatefulWidget {
  const Counting({super.key});

  @override
  State<Counting> createState() => _CounterState();
}

class _CounterState extends State<Counting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Text(
            '$count',
            style: TextStyle(
              fontSize: 70,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              print('$count');
            });
          },
          child: const Icon(Icons.add,size: 30,),
        ),
      ),
    );
  }
}

int count = 0;

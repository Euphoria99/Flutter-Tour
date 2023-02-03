import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'Body is centered',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            fontFamily: 'WorkSans',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.green[400],
      ),
    );
  }
}

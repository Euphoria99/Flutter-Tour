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
      // body: Container(
      //   color: Colors.grey[400],
      //   child: Text('hello there'),
      //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      //   margin: EdgeInsets.all(40),
      // ),
      body: Padding(
        child: Text('hey!!'),
        padding: EdgeInsets.all(90),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.green[400],
      ),
    );
  }
}

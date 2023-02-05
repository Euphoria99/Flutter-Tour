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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text('hello1,'),
              Text('hello2'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.blue,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.green,
            child: Text('three'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.green[400],
      ),
    );
  }
}

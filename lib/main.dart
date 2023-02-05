import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyCard(),
  ));
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID Card'),
      ),
    );
  }
}

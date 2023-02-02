import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Body is centered'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
      ),
    ),
  ));
}

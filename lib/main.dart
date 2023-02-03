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
        // child: Image(
        //   image: NetworkImage(
        //     'https://i.pinimg.com/564x/15/76/5b/15765b5a2a9a4b0408b39e3424cbbbde.jpg',
        //   ), //network-image
        //   image: AssetImage('Assets/images/samurai.jpg'), //asset-image
        // ),
        child: Image.asset('Assets/images/samurai.jpg'),
        // child: Image.network(
        //   'https://i.pinimg.com/564x/15/76/5b/15765b5a2a9a4b0408b39e3424cbbbde.jpg',
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.green[400],
      ),
    );
  }
}

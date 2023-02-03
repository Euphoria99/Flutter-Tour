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
        //button-1
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.blue,
        //   size: 50.0,
        // ),
        //button-2
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('button clicked');
        //   },
        //   child: Text('Submit'),
        //   style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        //   ),
        // ),
        //button-3
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.open_in_new),
          label: Text('Open the Link'),
        ),
        //button-4
        // child: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.open_in_new,
        //   ),
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

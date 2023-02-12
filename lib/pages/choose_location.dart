import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // void getData() async {
  //   //simulate network request for a username
  //   await Future.delayed(Duration(seconds: 3), () {
  //     print('username here');
  //   });
  //   //simulate network request for a bio
  //   await Future.delayed(Duration(seconds: 2), () {
  //     print('bio data here');
  //   });
  //   print('hey yo!');
  // }

  void getData() async {
    //simulate network request for a username
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'pavan here';
    });
    //simulate network request for a bio
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'software developer';
    });
    print('$name - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hello there'); //this prints first regardless
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose location'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

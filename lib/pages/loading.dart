import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    //make request
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/Asia/Kolkata'));
    Map data = jsonDecode(response.body);
    // print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset1 = data['utc_offset'].substring(1, 3);
    String offset2 = data['utc_offset'].substring(4, 6);
    print('date time is' + datetime);
    // print('offset1 is' + offset1);
    // print('offset2 is' + offset2);

    //create  DateTime object

    DateTime now = DateTime.parse(datetime);
    now = now
        .add(Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading screen'),
    );
  }
}

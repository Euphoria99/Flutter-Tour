import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? location;
  String? time;
  String? flag;
  String? url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      //make request
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/$url'));
      Map data = jsonDecode(response.body);

      //get properties from data
      String datetime = data['datetime'];
      String offset1 = data['utc_offset'].substring(1, 3);
      String offset2 = data['utc_offset'].substring(4, 6);
      // print('date time is' + datetime);
      // print('offset1 is' + offset1);
      // print('offset2 is' + offset2);

      //create  DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(
          Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));

      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught error : $e');
      time = 'Could not get time data';
    }
  }
}

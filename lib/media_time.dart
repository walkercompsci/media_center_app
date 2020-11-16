import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String url;

  WorldTime({ this.location, this.url });

  Future<void> getTime() async {

    try{
      Response response = await get('http://worldtimeapi.org/timezone/America/Indiana/Indianapolis');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = date['utc_offset'].substring(1,3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = DateFormat.jm().format(now);
    }
  }
}

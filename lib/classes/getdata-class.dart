import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
class allCountries {
  late bool isDayTime;
  late String timeNow;
  late String timeZone;
  getData() async {
    
    Response receivedDataFromApi = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Casablanca'));
    Map receivedData = jsonDecode(receivedDataFromApi.body);
// String datetime = receivedData["utc_datetime"];
// DateTime realtime = DateTime.parse(datetime);//n7awlo type dial dateTime mn String l DateTime//
// print(datetime);
// String offset = receivedData["utc_offset"].substring(0,3);//bash nakhd gher les 2 chiffre lwlen exemple 02:00 nakhd gher 02 ausssi n7wlo type dialo mn string l int//
// int intoffset = int.parse(offset);
// print(offset);
//bash nkhtasro les codes//
    DateTime datetime = DateTime.parse(receivedData["utc_datetime"]);

    int offset = int.parse(receivedData["utc_offset"].substring(0, 3));

    DateTime realTime = datetime.add(Duration(
        hours:
            offset));
            if(realTime.hour > 5 && realTime.hour < 18) {
               isDayTime = true;
            } 
            else {
               isDayTime = false;
            }
            //nzido lvaleur dial offset  lsa3a dialna 7et kyn lfer9 dial 1 hr dialna//
     timeNow = DateFormat('hh:mm a').format(realTime);

     timeZone = receivedData["timezone"];
    
  }
}
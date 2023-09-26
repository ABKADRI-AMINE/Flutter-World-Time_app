// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 191, 199),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(146, 12, 16, 49),
        title: Text(
          "Choose Location",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context, {"time":timeNow, "location":timeZone, "isDayTime":false});
                  },
                  title: Text(
                    "Egypt - Cairo",
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/egypt.png"),
                  ),
                ),
              ),
            ),


            
          
          
          
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:world_time_app/classes/getdata-class.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //ndiro fonction li katjeb data mn l api//
  getDataLoadingPage() async {
allCountries oneCounty = allCountries();
await oneCounty.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {"time": oneCounty.timeNow , "location": oneCounty.timeZone, "isDayTime" : oneCounty.isDayTime});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataLoadingPage();//initState kandiroha b7al f notre cas bash 9bl may9ra aya code y executee la fct getData//
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingCircle(
              color: Color.fromARGB(146, 12, 16, 49),
              size: 160.0,
            )
          ],
        ),
      ),
    );
  }
}

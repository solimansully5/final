import 'dart:convert';

import 'package:elearning/managers/get_students_manager.dart';
import 'package:elearning/managers/http_request.dart';
import 'package:elearning/router.dart';
import 'package:elearning/routing-constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async{
  runApp(MyApp());
  /*List data = await getdata();
  print(data);*/
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: screen0Route,
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
          fontFamily: 'Avenir'
      ),
//      home: MyApp(),
    );
  }
}

/*Future<List> getdata() async{
  String myurl = "http://orse.herokuapp.com/api/register";
  http.Response response = await http.get(myurl,
   headers: {
      'Accept':'application/json'
   });
  return json.decode(response.body);*//*

}*/

import 'package:elearning/managers/get_students_manager.dart';
import 'package:elearning/managers/http_request.dart';
import 'package:elearning/router.dart';
import 'package:elearning/routing-constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

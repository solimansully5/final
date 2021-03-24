import 'package:elearning/MainPage.dart';
import 'package:elearning/students.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'routing-constants.dart';
import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'CoursePage.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case screen0Route:
        return MaterialPageRoute(builder: (_) => Screen0());
      case screen1Route:
        return MaterialPageRoute(builder: (_) => Screen1());
      case screen2Route:
        return MaterialPageRoute(builder: (_) => Screen2());
      case MainPageRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case StudentsPageRoute:
        return MaterialPageRoute(builder: (_) => Students());
      case CoursePageRoute:
        List args = settings.arguments;
        print(args[0]);
        return MaterialPageRoute(builder: (_) => CoursePage(chosenImg: args[0], chosenTitle: args[1],));


    }
  }
}
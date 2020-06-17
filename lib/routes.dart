import 'package:flutter/material.dart';
import 'package:flutterawesome/ui/screen/screens.dart';

class Routes {
  Routes._();

  //screen name
  static const String homeScreen = "/homeScreen";

  //init screen name
  static String initScreen() => homeScreen;

  static final routes = <String, WidgetBuilder>{
    homeScreen: (context) => HomeScreen(),
  };
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterawesome/utils/locator.dart';

import 'blocs/simple_bloc_delegate.dart';
import 'ui/app.dart';

void main() async {
  setupLocator();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

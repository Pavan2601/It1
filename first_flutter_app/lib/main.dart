// @dart=2.9
import 'package:first_flutter_app/home.dart';
import 'package:first_flutter_app/start_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:validators/sanitizers.dart';
import 'Register.dart';
import 'login.dart';
import 'Dashboard.dart';
import 'Media_Query.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

import 'package:callol/pages/detailsLeague.dart';
import 'package:callol/pages/login.dart';
import 'package:callol/splashScreen.dart';
import 'package:callol/theme/styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(SplashHandler());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lodds',
      debugShowCheckedModeBanner: false,
      theme: loddsTheme(),
      home: LoginPage(),
    );
  }

}

import 'package:callol/pages/details-league.page.dart';
import 'package:callol/pages/main.page.dart';

import 'package:callol/pages/styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call LOL',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: DetailsLeaguePage(),
    );
  }
}

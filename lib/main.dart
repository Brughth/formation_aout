import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:formation_aout/application_page.dart';
import 'package:formation_aout/facebook_clone/facebook_clone_home_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FORMATION AOUT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApplicationPage(),
    );
  }
}

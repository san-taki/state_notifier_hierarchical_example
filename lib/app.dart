import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hierarchicalstateexample/screens/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Hierarchical State Example'),
    );
  }
}

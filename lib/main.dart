import 'package:flutter/material.dart';
import 'package:gongojek/launcher/launcher_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Trash',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: new LauncherPage(),
    );
  }
}


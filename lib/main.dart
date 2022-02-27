import 'package:custom_design/screens/basic_design.dart';
import 'package:custom_design/screens/home_screen.dart';
import 'package:custom_design/screens/page_view_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'basic': (context) => BasicDesingScreen(),
        'scroll': (context) => PageViewScreen()
      },
    );
  }
}

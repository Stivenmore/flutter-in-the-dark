import 'package:flutter/material.dart';
import 'package:flutter_in_the_dark/src/pages/code_page.dart';
import 'package:flutter_in_the_dark/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter in the Dark',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFF000000),
        primaryColor: Color(0XFF5665F2),
        accentColor: Color(0XFF243F5E),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      onGenerateRoute: (RouteSettings route) {
        if (route.name == '/code-of-conduct') return MaterialPageRoute(builder: (context) => CodePage());

        return MaterialPageRoute(builder: (context) => HomePage());
      },
    );
  }
}

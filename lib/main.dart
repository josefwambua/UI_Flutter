import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login.dart'; // Update import path
import 'home_page.dart'; // Update import path

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Interface',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Color(0xFFdcb0ff),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFFf0f2f9)),
          bodyText2: TextStyle(color: Color(0xFFf0f2f9)),
          headline6: TextStyle(color: Color(0xFFf0f2f9)),
        ),
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
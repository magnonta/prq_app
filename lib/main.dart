import 'package:flutter/material.dart';
import 'package:prq_app/home.principal.dart';
import 'package:prq_app/home_screen.dart';
import 'package:prq_app/login.page.dart';
import 'package:prq_app/splash.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/splash": (context) => SplashScreen(),
        "/home_screen": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/homeprincipal": (context) => HomePrincipal(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

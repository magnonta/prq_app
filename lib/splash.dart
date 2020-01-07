import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushNamed(
              context, "/login",
              // MaterialPageRoute(
              //   builder: (context) => LoginPage(),
              // ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: "church",
                        child: SizedBox(
                          width: 128,
                          height: 128,
                          child: Image.asset(
                            "assets/church.png",
                          ),
                        ),
                        transitionOnUserGestures: true,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Seja bem vindo",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Estamos te encaminhando",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

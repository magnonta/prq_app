import 'package:flutter/material.dart';
import 'package:prq_app/inputWidget.dart';
import 'package:prq_app/sign_in.google.dart';

import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // FlutterLogo(size: 150),
              Image(image: AssetImage("assets/cruz_logo.png"), height: 70.0),
              SizedBox(height: 50),
              // TextFormField(
              //   autofocus: true,
              //   keyboardType: TextInputType.emailAddress,
              //   style: new TextStyle(color: Colors.black, fontSize: 20),
              //   decoration: InputDecoration(
              //       labelText: "E-mail",
              //       labelStyle: TextStyle(color: Colors.black)),
              // ),
              Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  InputWidget(30.0, 0.0),
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Text(
                                'Entre com seu E-mail...',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color(0xFFA0A0A0), fontSize: 12),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.visiblePassword,
                style: new TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Login com Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

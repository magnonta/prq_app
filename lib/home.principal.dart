import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePrincipal extends StatefulWidget {
  @override
  _HomePrincipalState createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRect(
        child: Image.network(
          'http://2.bp.blogspot.com/-nb9c1bklRJA/TjJHHM4FB6I/AAAAAAAAASk/LsTcXynM3yM/s1600/F%25C3%25A9rias+151-1.jpg',
          height: 52,
          width: 52,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

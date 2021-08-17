import 'package:flutter/material.dart';
import 'package:flutter_landingpage/pages/navbar.dart';

void main() => runApp(LandingPage());

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Navbar());
  }
}

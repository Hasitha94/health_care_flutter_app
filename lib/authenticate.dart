import 'package:flutter/material.dart';
//import 'package:healthcare/authenticate.dart';
import 'package:healthcare/screens/login_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return loginScreen();
  }
}

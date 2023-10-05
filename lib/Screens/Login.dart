import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromRGBO(0, 255, 117, 100),
            Color.fromRGBO(0, 87, 0, 100),
          ])),
      // child: Scaffold(
      //   backgroundColor: Colors.transparent,
      // ),
    );
  }
}

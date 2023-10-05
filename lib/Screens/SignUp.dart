import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State <SignUp> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromRGBO(176, 255, 144, 0.863),
            Color.fromRGBO(17, 176, 163, 0.816),
          ])),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: _PageSign(),
      ),
    );
  }
  
  Widget _PageSign() {
    return Padding( 
      padding: const EdgeInsets.all(30.0)

    ) ;
  }
}
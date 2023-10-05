import 'dart:math';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController UsernameController  = TextEditingController();
  TextEditingController passwordController = TextEditingController() ; 
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
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child : Center(
      child: Column(
        children: [
        _icon(),
        const SizedBox(height: 50) ,
        _inputField1("Enter E-mail",  UsernameController) , 
        const SizedBox(height: 30) ,
        _inputField2("Enter Password", passwordController , isPassword : true    ) , 
        const SizedBox(height : 50 ) , 
        _LoginBtn() , 
        const SizedBox(height: 20,) ,
        _Noacc(),
        const SizedBox(height: 10,) ,
        Text("Dont have an account ?")
          ]  
        ),
      )
    );
  }

  Widget _icon() {
    return Container(
      margin: EdgeInsets.all(16.0),
      child:  Image.asset('images/Wallet.png', height: 210 , scale:  2.5, ) , 
      
    );
  }

  Widget _inputField1(String Text , TextEditingController controller ,){

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(80) , 
      borderSide: const BorderSide(color: Colors.white),
    );
    return TextField(
      style: const TextStyle( color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email) ,prefixIconColor: Color.fromRGBO(50, 50, 50, 40), 
        hintText: Text , 
        hintStyle: const TextStyle(color: Colors.white ),
        enabledBorder: border, 
        focusedBorder: border ,
      ),
    ) ; 
  }
  Widget _inputField2(String Text , TextEditingController controller ,
  {isPassword = false }){

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(80) , 
      borderSide: const BorderSide(color: Colors.white),
    );
    return TextField(
      style: const TextStyle( color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),prefixIconColor: Color.fromRGBO(50, 50, 50, 40), 
        hintText: Text , 
        hintStyle: const TextStyle(color: Colors.white ),
        enabledBorder: border, 
        focusedBorder: border ,
      ),
      obscureText: isPassword,
    ) ; 
  }
  Widget _LoginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + UsernameController.text) ; 
        debugPrint("Password :  " + passwordController.text)  ; 
      }
      , child: const SizedBox(
        width: double.infinity,
        child: Text(
          "LOG IN" , 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        )
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder() , 
        primary: Color.fromARGB(255, 228, 226, 226) ,
        onPrimary: Colors.black , 
        padding:  const EdgeInsets.symmetric(vertical: 16)  , 
      ),
    ) ; 
  }

  Widget _Noacc() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + UsernameController.text) ; 
        debugPrint("Password :  " + passwordController.text)  ; 
      }
      , child: const SizedBox(
        width: 250,
        child: Text(
          "SIGN UP" , 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        )
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder() , 
        primary: Color.fromARGB(200, 228, 226, 226) ,
        onPrimary: Colors.black , 
        padding:  const EdgeInsets.symmetric(vertical: 10)  , 
      ),
    ) ; 
  }


}
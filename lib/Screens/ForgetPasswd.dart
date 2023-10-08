import 'package:flutter/material.dart';
import 'package:personal_finance/Screens/Login.dart';

class ForgetPasswd extends StatefulWidget {
  const ForgetPasswd({Key? key}) : super(key: key);

  @override
  State<ForgetPasswd> createState() => _ForgetPasswd();
}

class _ForgetPasswd extends State<ForgetPasswd> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController NewPasswordController = TextEditingController();
  bool isBtnActive = true ; 
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
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            _Header("  Change Your Password"),
            const SizedBox(height: 20),
            _inputField2(
              "Input your E-mail",
              Icon(Icons.email_outlined),
              EmailController,
            ),
            // const SizedBox(height: 20,),
            // _inputField2(
            //   "Your current Password",
            //   Icon(Icons.lock_outline), OldPasswordController,
            // ),
            const SizedBox(height: 20,),
            _inputField2(
              "Your new Password", Icon(Icons.lock_outline), NewPasswordController,
              isPassword: true),
            const SizedBox(height: 40,),
            _Btn()
          ]),
        ));
  }

  Widget _Btn() {
    return ElevatedButton(
      onPressed: () {
        if (  EmailController.text.isNotEmpty
         && NewPasswordController.text.isNotEmpty){
        Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
        } 
      } , 
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "NEXT",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )
        ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255, 228, 226, 226),
        onPrimary: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 25),
      ),
    );
  }

  Widget _Header(String text) {
    return Row(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Login()));
          },
          child: Icon(
            Icons.arrow_back,
            size: 55,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  Widget _inputField2(String Text, Icon icon, TextEditingController controller,
      {isPassword = false} ) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(80),
      borderSide: const BorderSide(color: Color.fromRGBO(175, 175, 175, 170)),
    );
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(175, 175, 175, 0.50),
        prefixIcon: icon,
        prefixIconColor: Colors.black,
        hintText: Text,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
      );
  }
}

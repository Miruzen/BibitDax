import 'package:flutter/material.dart';
import 'package:personal_finance/Screens/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController UsernameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

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
<<<<<<< HEAD
    return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            _Header("   Sign Up"),
            const SizedBox(height: 100),
            _inputField2("Enter Username", Icon(Icons.person_outline),
                UsernameController),
            const SizedBox(height: 30),
            _inputField2(
              "Enter E-mail",
              Icon(Icons.email_outlined),
              EmailController,
            ),
            const SizedBox(height: 30),
            _inputField2(
                "Enter Password", Icon(Icons.lock_outline), PasswordController,
                isPassword: true),
            const SizedBox(
              height: 40,
            ),
            _Btn()
          ]),
        ));
=======
    return Padding( 
      padding: const EdgeInsets.all(30.0),
      child : Center(
      child: Column(
        children: [
        const SizedBox(height: 50,) , 
          _Header("   Sign Up") , 
        const SizedBox(height: 100) ,
        _inputField2("Enter Username", Icon(Icons.person_outline),  UsernameController) , 
        const SizedBox(height: 30) ,
        _inputField2("Enter E-mail", Icon(Icons.email_outlined),passwordController , isPassword : true    ) , 
        const SizedBox(height : 30 ) , 
        _inputField2("Enter Password", Icon(Icons.lock_outline), RepassController ,isPassword: true) ,
        const SizedBox(height: 40,) ,
        _Btn()
          ]  
        ),
      )
    ) ;
>>>>>>> 8302745548a4933c8353657eee53f2127dfec6c1
  }

  Widget _Btn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "SIGN UP",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )),
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
            fontSize: 30,
          ),
        ),
      ],
    );
  }

  Widget _inputField2(String Text, Icon icon, TextEditingController controller,
      {isPassword = false}) {
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

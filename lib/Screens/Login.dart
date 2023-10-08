import 'package:flutter/material.dart';
import 'package:personal_finance/Screens/SignUp.dart';
import 'package:personal_finance/Widgets/bottomnavbar.dart';

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
        _inputField2("Enter E-mail",  Icon(Icons.email_outlined),UsernameController) , 
        const SizedBox(height: 30) ,
        _inputField2("Enter Password", Icon(Icons.lock_outline) , passwordController , isPassword : true    ) , 
        const SizedBox(height : 50 ) , 
        _LoginBtn() , 
        const SizedBox(height: 20,) ,
        _Noacc(),
        // const SizedBox(height: 10,) ,
        // Text("Dont have an account ?")
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

  
  Widget _inputField2(String Text ,Icon icon ,  TextEditingController controller ,
  {isPassword = false }){

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(80) , 
      borderSide: const BorderSide(color: Color.fromRGBO(175, 175, 175, 170),
    ));
    return TextField(
      style: const TextStyle( color: Colors.red),
      controller: controller,
      decoration: InputDecoration(
        filled: true , fillColor: Color.fromRGBO(175, 175, 175, 0.50),
        prefixIcon: icon ,prefixIconColor: Colors.black, 
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
        if ( UsernameController.text.isNotEmpty && passwordController.text.isNotEmpty)
        Navigator.push(context , MaterialPageRoute(builder: (context) => Bottom(),));
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
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center , 
      children: [
        const Text("Dont have an account ? ", 
        style: TextStyle(color: Colors.white , ),) ,
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),)) ;
          },
          child: const Text("Sign Up" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
        )
      ],
    ) ;
    // return ElevatedButton(
    //   onPressed: () {
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),)) ;
    //   }
    //   , child: const SizedBox(
    //     width: 250,
    //     child: Text(
    //       "SIGN UP" , 
    //       textAlign: TextAlign.center,
    //       style: TextStyle(fontSize: 15),
    //     )
    //   ),
    //   style: ElevatedButton.styleFrom(
    //     shape: const StadiumBorder() , 
    //     primary: Color.fromARGB(200, 228, 226, 226) ,
    //     onPrimary: Colors.black , 
    //     padding:  const EdgeInsets.symmetric(vertical: 10)  , 
    //   ),
    // ) ; 
  }


}
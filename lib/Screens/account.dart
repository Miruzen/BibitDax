// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:personal_finance/Screens/Login.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "My Account",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/ZeroProfile.png'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
              child: Text(
                "Hi, Lexyminaire",
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
              child: Text(
                "My Account",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Username"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("E-Mail"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Phone Number"),
                ),
                Divider(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
              child: Text(
                "Help Center",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ListTile(
                  leading: Icon(
                    Icons.question_mark,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("FAQs"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.bug_report,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Report Bugs"),
                ),
                Divider(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent)),
              onPressed: () {
                Navigator.push(context , MaterialPageRoute(builder: (context) => Login(),));
              },
              child: Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

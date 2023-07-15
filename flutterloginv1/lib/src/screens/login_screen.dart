import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<loginScreen> {
  Widget build(context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
            child: Column(
          children: [Text("Hello World"), Text("Hello World 2")],
        )));
  }
}

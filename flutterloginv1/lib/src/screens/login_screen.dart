import 'dart:math';

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
          children: [
            emailField(),
            const SizedBox(height: 10),
            passwordField(),
            const SizedBox(height: 10),
            submitButton()
          ],
        )));
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Email Address",
        hintText: "you@example.com",
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Enter Password",
        hintText: "Password",
      ),
      obscureText: true,
    );
  }

  submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.0),
      ))),
      onPressed: () {},
      child: const Text('Login'),
    );
  }
}

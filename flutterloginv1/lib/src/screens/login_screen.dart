import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<loginScreen> {
  final formKey = GlobalKey<FormState>();
  Widget build(context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
            key: formKey,
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
      validator: (value) {
        if (value != null) {
          if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
        }
      },
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
      validator: (value) {
        if (value != null) {
          if (value.length < 4) {
            return 'Password must be atleast 5 characters long';
          }
        }
      },
    );
  }

  submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.0),
      ))),
      onPressed: () {
        print(formKey.currentState?.validate());
      },
      child: const Text('Login'),
    );
  }
}

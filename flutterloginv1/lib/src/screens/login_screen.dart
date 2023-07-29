import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class loginScreen extends StatefulWidget {
  createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<loginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
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
      validator: validateEmail,
      onSaved: (value) {
        email = value!;
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
      validator: validatePassword,
      onSaved: (value) {
        password = value!;
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
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();
          print("Time to post $email and $password to the server");
        }
      },
      child: const Text('Login'),
    );
  }
}

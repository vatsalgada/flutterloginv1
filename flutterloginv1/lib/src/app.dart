import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Login',
      home: Scaffold(
        body: loginScreen(),
      ),
    );
  }
}

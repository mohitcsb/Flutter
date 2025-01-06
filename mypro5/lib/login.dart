import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
        children: [
          Text(
              "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0, // Adjust the text size
            fontWeight: FontWeight.bold, // Make the text bold (optional)
            color: Colors.blue,
          )
          )
          
        ]
      ),
    );
  }
}

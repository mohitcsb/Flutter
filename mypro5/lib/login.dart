import 'dart:ui';

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
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Image.asset("images/sale_banner.jpg",width: double.infinity,),
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlueAccent,
                    ),
                    width: 60,
                    height: 60,
                  ),
                ),
                Positioned(
                  left: 30,
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: AssetImage('images/product2.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.red,
                        width: 8.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 70,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: AssetImage('images/product3.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 8.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 100,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: AssetImage('images/product4.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 8.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text("Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0, // Adjust the text size
                fontWeight: FontWeight.bold, // Make the text bold (optional)
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}

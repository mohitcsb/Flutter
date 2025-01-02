import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mypro5/ecom.dart';
import 'package:mypro5/fourth.dart';
import 'package:mypro5/page5.dart';
import 'package:mypro5/page6.dart';
import 'package:mypro5/second%20page.dart';
import 'package:mypro5/sportsStoreHomePage.dart';
import 'package:mypro5/third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "second": (context)=> CalculationScreen(),
        "home": (context)=> Multi(),
        "third": (context)=> Page3(),
        "fourth": (context)=> Page4(),
        // "five": (context)=> Page5(),
        "six": (context)=> Page6(),
        "ecom": (context)=> Ecom(),
        "monir": (context)=> SportsStoreHomePage(),
      },
      home: Multi(),
    );
  }
}

class Multi extends StatefulWidget {
  // const Multi({super.key});

  @override
  State<Multi> createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  TextEditingController m = TextEditingController();
  TextEditingController n = TextEditingController();
  TextEditingController o = TextEditingController();
  TextEditingController p = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Multiplication")),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextField(
                controller: m,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 1st price',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: n,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 2nd price',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: o,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Discount',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: p,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'VAT',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "second");
              },
                  child: Text("GO")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "five");
              },
                  child: Text("Five")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "six");
              }, child: Text("Go Six")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "ecom");
              }, child: Text("Go Ecom")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "monir");
              }, child: Text("Go Monir")),
            ],
        
          ),
        ),
      ),
    );
  }
}

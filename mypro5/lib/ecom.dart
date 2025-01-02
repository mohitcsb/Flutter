import 'package:flutter/material.dart';

class Ecom extends StatelessWidget {
  const Ecom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sports"),),
      body: Column(

        children: <Widget>[
          
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('images/FasionSale.png'),
                fit: BoxFit.fill,
              ),
            ),
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between texts
              children: [
                Text(
                  'Sport Shoes',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold ),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 10, ),
                ),
              ],

            ),
          )

          // ElevatedButton(onPressed: (){
          //   Navigator.pushNamed(context, "home");
          // }, child: Text("Go Home")),
        ],
      ),
    );
  }
}

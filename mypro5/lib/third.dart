import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("hello"),

      ),

      body: Column(

        children: [

          SingleChildScrollView(

            scrollDirection: Axis.horizontal,

            child: Row(

              children: [

                TextButton( onPressed: () {}, child: Text("One" )),

                TextButton( onPressed: () {}, child: Text("Two" )),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three")),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three", )),
                TextButton( onPressed: () {}, child: Text("One" )),

                TextButton( onPressed: () {}, child: Text("Two" )),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three")),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three", )),

                TextButton( onPressed: () {}, child: Text("One" )),

                TextButton( onPressed: () {}, child: Text("Two" )),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three")),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three", )),
                TextButton( onPressed: () {}, child: Text("One" )),

                TextButton( onPressed: () {}, child: Text("Two" )),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three")),

                TextButton(onPressed: () {}, child: Text("Three")),

                TextButton( onPressed: () {}, child: Text("Three", )),


              ],

            ),


          ),

        ],


      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}

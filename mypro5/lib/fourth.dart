import 'package:flutter/material.dart';
import 'package:mypro5/product.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  // var plist = [
  //   Product(101, "Mohit", "images/product1.png"),
  //   Product(102, "Siyam", "images/product2.png"),
  //   Product(103, "Rakib", "images/product3.png"),
  //   Product(104, "Mhedi", "images/product4.png"),
  //   Product(105, "Sohel", "images/product3.png"),
  // ];

  var plist2 = <Map>[
    {"id":101,"name":"Mohit","image":"images/product1.png"},
    {"id":102,"name":"Mohit","image":"images/product2.png"},
    {"id":103,"name":"Mohit","image":"images/product3.png"},
    {"id":104,"name":"Mohit","image":"images/product4.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Text(plist2[index]["id"].toString()),
                    Text(plist2[index]["name"]),
                    Image.asset(plist2[index]["image"],height: 150, width: 100,),


                  ],
                ),

              );
            },
            itemCount: plist2.length,
          ),




    );
  }
}

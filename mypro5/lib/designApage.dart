import 'package:flutter/material.dart';
import 'package:mypro5/page6.dart';

class Designapage extends StatefulWidget {
  const Designapage({super.key});

  @override
  State<Designapage> createState() => _DesignapageState();
}

class _DesignapageState extends State<Designapage> {
  int myIndex = 1;
  List myWidget = [
    Page6(),
    Container(
      color: Colors.redAccent,
      child: Center(child: Text("data2")),
    ),
    Container(
      color: Colors.blueAccent,
      child: Center(child: Text("data3")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: myWidget[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlueAccent.shade200,
        selectedItemColor: Colors.white,
        selectedFontSize: 20,
        currentIndex: myIndex,
        onTap: (int i) {
          setState(() {
            myIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_page,
              ),
              label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.miscellaneous_services,
              ),
              label: "Service"),
        ],
      ),
    );
  }
}

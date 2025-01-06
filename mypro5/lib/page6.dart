import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mypro5/second%20page.dart';
import 'package:mypro5/sportsStoreHomePage.dart';
import 'package:mypro5/third.dart';
import 'package:mypro5/user.dart';

import 'designApage.dart';
import 'ecom.dart';
import 'fourth.dart';
import 'login.dart';
import 'main.dart';

List<User> userFromJson(String str){
  return List<User>.from(json.decode(str).map((x){
    return User.fromJson(x);
  }));
}

Future<List<User>> findFutureUsers() async {
  final response = await http.get(Uri.parse('https://jsonplaceHolder.typicode.com/posts'));
if(response.statusCode == 200){
  return userFromJson(response.body);
  } else{
  throw Exception('Failed to load students');
  }
}

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {

  List _pages = [
    Multi(),
    Page3(),
    Page4(),
    Ecom(),
    SportsStoreHomePage(),
    Login(),
  ];

  int _selectedIndex = 0;


  late List<User>? listUser=[];
  void findListUsers()async{
    listUser = await findFutureUsers();
    if(listUser !=null){
      setState(() {

      });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findListUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 0;
                });
                Scaffold.of(context).closeDrawer();
              }
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 3;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 4;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 5;
                });
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text("Show page 6"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.pushNamed(context, "second");
            },
          ),
          IconButton(
            icon: const Icon(Icons.call),
            tooltip: 'Go to the next page',
            onPressed: () {

            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      // body: Column(
      //   children: [
      //     SizedBox(height: 10,),
      //     Divider(color: Colors.black,),
      //     Container(
      //       height: 600,
      //       margin: EdgeInsets.only(left: 10,right: 10),
      //       child: ListView.builder(
      //         itemCount: listUser!.length,
      //           itemBuilder: (context, index){
      //             if(listUser!=null){
      //               return ListTile(
      //                 leading: CircleAvatar(child: FlutterLogo(),),
      //                 title: Text(listUser![index].userId.toString()),
      //                 subtitle: Text(listUser![index].body.toString()),
      //                 trailing: CircleAvatar(child: Text(listUser![index].title.toString(),style: TextStyle(color: Colors.white))),
      //               );
      //             }else{
      //               return Center(child: CircularProgressIndicator(),);
      //             }
      //           },
      //       ),
      //     ),
      //     SizedBox(height: 10,),
      //   ],
      // ),

    );
  }
}

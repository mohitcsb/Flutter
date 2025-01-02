import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mypro5/user.dart';

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
      body: Column(
        children: [
          SizedBox(height: 10,),
          Divider(color: Colors.black,),
          Container(
            height: 600,
            margin: EdgeInsets.only(left: 10,right: 10),
            child: ListView.builder(
              itemCount: listUser!.length,
                itemBuilder: (context, index){
                  if(listUser!=null){
                    return ListTile(
                      leading: CircleAvatar(child: FlutterLogo(),),
                      title: Text(listUser![index].userId.toString()),
                      subtitle: Text(listUser![index].body.toString()),
                      trailing: CircleAvatar(child: Text(listUser![index].title.toString(),style: TextStyle(color: Colors.white))),
                    );
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
                },
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sih2/User/body.dart';

class user extends StatefulWidget {
  final MediaQueryData sz;
  user({required this.sz, Key? key}) : super(key: key);

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        bottomOpacity: 100,
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.white,
        title: Text("Profile", style: TextStyle(color: Colors.grey),),),
        body: Body()


    );
  }
}





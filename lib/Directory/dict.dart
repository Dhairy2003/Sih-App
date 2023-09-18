import 'package:flutter/material.dart';
import 'package:sih2/Directory/homepage.dart';


import '../main.dart';





class dict extends StatelessWidget {
  final MediaQueryData qd;
  dict({required this.qd, Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return list_mkr(qd: qd);
  }
}
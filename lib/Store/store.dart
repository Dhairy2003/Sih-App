import 'package:flutter/material.dart';

import '../store/HomePage.dart';

class store extends StatefulWidget {
  const store({super.key});

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeApp()
    );
  }
}

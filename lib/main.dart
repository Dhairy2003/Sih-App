import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sih2/Directory/dict.dart';
import 'package:sih2/Home/home.dart';

import 'Community/community.dart';
import 'Store/store.dart';
import 'User/user.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData sz = MediaQuery.of(context); // Correctly obtain sz from MediaQuery
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Nidaan',
      home: HomePage(sz: sz), // Pass sz to HomePage
    );
  }
}


class HomePage extends StatefulWidget {
  final MediaQueryData sz;
  HomePage({Key? key, required this.sz}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2 ;


  Widget build(BuildContext context) {
    final List<Widget> screens = [
      dict(qd: widget.sz),
      store(),
      home(),
      Community(sz: widget.sz), // Initialize Community widget here
      user(sz: widget.sz,)
    ];

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(55)),
          ),
          padding: EdgeInsets.only(bottom:10, top: 10, left: 10, right: 10 ),
          child: GNav(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            gap: 8,
            color: Color(0xff5c5c5a),
            activeColor: Color(0xff3da79d),
            tabBackgroundColor: Color(0xffcceae8),
            duration: Duration(milliseconds: 400),
            tabs: [
              GButton(icon: Icons.book, text: "Index",textStyle: TextStyle(fontWeight: FontWeight.w400),),



              GButton(icon: Icons.storefront, text: "Store",textStyle: TextStyle(fontWeight: FontWeight.w400)),



              GButton(icon: Icons.home, text: "Home",textStyle: TextStyle(fontWeight: FontWeight.w400)),




              GButton(icon: Icons.group_sharp, text: "Groups",textStyle: TextStyle(fontWeight: FontWeight.w400)),




              GButton(icon: Icons.person, text: "You",textStyle: TextStyle(fontWeight: FontWeight.w400)),


            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      body: screens[_selectedIndex],
    );
  }
}

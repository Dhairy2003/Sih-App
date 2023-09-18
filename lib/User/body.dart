import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 10,),
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "images/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "My Orders",
            icon: "images/Cart Icon.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "images/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "images/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "images/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "images/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

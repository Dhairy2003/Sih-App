import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key, // Add Key? key parameter here
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key); // Use the key parameter in super

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Container(
              child: SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn) ,
                width: 22,
              ),
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text, style: TextStyle(color: Colors.black),)),
            Icon(Icons.arrow_forward_ios, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}

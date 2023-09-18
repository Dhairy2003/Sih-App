import 'package:flutter/material.dart';

class emoticons extends StatelessWidget {
  final String emoticonFace;
  const emoticons({Key? key, required this.emoticonFace}) : super(key : key) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( color: Colors. green [100], borderRadius: BorderRadius. circular (12),
      ),
      padding: EdgeInsets.all(16),
        child: Center(
          child: Text(
            emoticonFace, style: TextStyle(fontSize: 28),
          ),

        )



    );
  }
}




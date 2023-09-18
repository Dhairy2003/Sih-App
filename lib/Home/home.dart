import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sih2/Home/Camera/image_picker.dart';
import 'package:sih2/Home/emoticons.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3da79d),
        body: SafeArea( child: SingleChildScrollView(
          child: Container(
            height: 1000,
            child: Column (
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(children: [

                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[ Text ( 'Hi, Gourav !', style: TextStyle( color: Colors.white, fontSize: 26,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2,),
                                  


                                ]),
                            Container(
                              decoration: BoxDecoration( color: Colors.green [300], borderRadius: BorderRadius.circular (12)),
                              padding: EdgeInsets.all(12),
                              child: Icon(Icons.notifications, color: Colors.white ,),
                            )
                          ]),
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration( color: Colors.green [100], borderRadius: BorderRadius. circular (12)
                        ), //
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [

                            Icon(Icons.search, color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text('Search', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                          ],
                        ),),
                      SizedBox(height: 22,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ Text (' Your Crops ',  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                            Icon(Icons.more_horiz, color: Colors.white,)
                          ]),
                      SizedBox(height: 25,),// TextStyle ), // Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              emoticons(emoticonFace: "🧅"),
                              SizedBox(height: 8,),
                              Text("Onion", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              emoticons(emoticonFace: "🥔"),
                              SizedBox(height: 8,),
                              Text("Potato", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              emoticons(emoticonFace: "🌽"),
                              SizedBox(height: 8,),
                              Text("Corn", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              emoticons(emoticonFace: "🌶"),
                              SizedBox(height: 8,),
                              Text("Chillie", style: TextStyle(color: Colors.white),)
                            ],
                          )],),
                           SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              emoticons(emoticonFace: "🥕"),
                              SizedBox(height: 8,),
                              Text("Carrots", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              emoticons(emoticonFace: "🥦"),
                              SizedBox(height: 8,),
                              Text("Broclli", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              emoticons(emoticonFace: "➕"),
                              SizedBox(height: 8,),
                              Text("Add more", style: TextStyle(color: Colors.white),)
                            ],
                          ),



                        ],
                      )


                    ],),
                  ),
                  SizedBox(height: 25,),

                  Expanded(child: Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),

                    ),

                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('DL Disease Detection', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Image_Picker(),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Weather', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xff3da79d), // Set the background color of the container
                              borderRadius: BorderRadius.circular(10), // Optional: Add rounded corners to the container
                            ),
                            child: Stack(
                              alignment: Alignment.center, // Align all children to the center of the Stack
                              children: [
                                Positioned(
                                  left: -10, // Adjust this value to change the horizontal position of the image
                                  child: SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: Image.asset(
                                      'images/2.png', // Replace with the actual asset path
                                      // Ensure the whole image is visible within the container
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 150,
                                  child: Text(
                                    "Cloudy Outside",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 160,
                                  top: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center, // Vertically center the Column content
                                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Temperature",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "24' C",
                                            style: TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text(
                                            "Humidity",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "8",
                                            style: TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text(
                                            "Wind Speed",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "12",
                                            style: TextStyle(color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                // Add other widgets below if needed
                              ],
                            )


                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('News and Updates', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Icon(Icons.more_horiz)
                            ],
                          ),





                        ],
                      ),
                    ),
                  ))


                ]),
          ),
        )
        ));;



  }
}

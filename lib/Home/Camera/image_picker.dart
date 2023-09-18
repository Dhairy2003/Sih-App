import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Image_Picker extends StatefulWidget {
  const Image_Picker({Key? key}) : super(key: key);

  @override
  State<Image_Picker>
  createState() => _Image_PickerState();
}

class _Image_PickerState extends State<Image_Picker> {
  File? selectedImage;
  String base64Image = "";
  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        // won't have any error now
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Change to your desired color
                ),
                onPressed: () {
                  chooseImage("camera");
                },
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Icon(Icons.camera, color: Color(0xff3da79d),), // Replace with your desired leading icon
                      SizedBox(width: 20), // Add some spacing between the icon and text
                      Text("Image from Camera", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 30,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Change to your desired color
                ),
                onPressed: () {
                  chooseImage("Gallery");
                },
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Icon(Icons.image, color: Color(0xff3da79d),), // Replace with your desired leading icon
                      SizedBox(width: 20), // Add some spacing between the icon and text
                      Text("Image From Gallery", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              )

            ],
          ),
        ));
  }
}


import 'package:flutter/material.dart';
import 'constants.dart';

class category extends StatefulWidget {
  final double sh;
  final double sw;

  const category({required this.sh, required this.sw, Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  List<String> categories = ["Seeds", "Fertilizers", "Pesticides", "Equipments"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, widget.sh, widget.sw),
      ),
    );
  }

  Widget buildCategory(int index, double sh, double sw) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: sh * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: index == selectedIndex ? dfColor : dfLightColor,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children:[

                SizedBox(width: 14,),


                ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: index == selectedIndex ? Colors.green.shade400 : Colors.white,
                  width: sw * 0.079,
                  height: sh * 0.007,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

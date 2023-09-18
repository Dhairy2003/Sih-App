import "package:flutter/material.dart";
import "Product.dart";
import "constants.dart";
import "screen.dart";
import "itemCard.dart";
import "category.dart";



class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Nidaan Store", style: heading),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0, // Set titleSpacing to zero
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.grey),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [




      Padding(
      padding: EdgeInsets.symmetric(horizontal:sw * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: sh * 0.01),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: sw * 0.02),
            decoration: BoxDecoration(
              color: Color(0xffeaf2f4),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(color: Colors.blue.shade700),
              ),
            ),
          ),])),


          category(sw: sw, sh: sh),
          SizedBox(
            height: sh * 0.022,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 78), // Adjust margin as needed
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => itemCard(
                  sh,
                  sw,
                  products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => screen(sw, sh, products[index]),
                    ),
                  ),
                ),
                itemCount: products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}





import 'package:flutter/material.dart';
import 'template.dart';
import 'constant.dart';


class PostPage extends StatefulWidget {
  final MediaQueryData qd;
  const PostPage({required this.qd, Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(

        children:[ Positioned(
          right: 0,
          bottom: 0,
          child: FloatingActionButton(
            mini: true,
            onPressed: () {
            },
            backgroundColor: Color(0xff3da79d),
            child: Icon(Icons.add),
          ),
        ),
      ]),
      appBar: AppBar(
        title: Text("Community", style: heading),
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

        body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: widget.qd.size.height * 0.02),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.02),
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
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: postcards.length,
                  itemBuilder: (context, index) {
                    return PostCardBuilder(p: postcards[index]);
                  },
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

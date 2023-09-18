import 'package:flutter/material.dart';
import 'package:sih2/svg_icnbtn.dart';
String Lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

class Postcards {
  final String ?i1;
  final String ?i2;
  final String title, Posted_by, descr;

  Postcards(

      {
        this.i1,
        this. i2,
        required this.Posted_by,
        required this.descr,
        required this.title
      });
}

List<Postcards> postcards = [
  Postcards(
      Posted_by: "Mahima Bisen",
      descr: Lorem,
      i1: "images/flower.jpg",
      i2: "images/forest.jpg",
      title : "How my Tulips look ?"

  ),
  Postcards(
      Posted_by: "Hitansh Sharma",
      descr: Lorem,
      i1: "images/flower.jpg",
      i2: "images/forest.jpg",
      title : "How my Tulips look ?"

  ),
  Postcards(
      Posted_by: "Aditya Choudhary",
      descr: Lorem,
      i1: "images/flower.jpg",
      i2: "images/forest.jpg",
      title : "How my Tulips look ?"

  ),


];
class PostCardBuilder extends StatelessWidget {
  final Postcards p;

  const PostCardBuilder({required this.p, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to a new page when the card is tapped
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostDetailPage(post: p),
          ),
        );
      },
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Container(
          // Lighten the border
          padding: EdgeInsets.all(8), // Add padding to the container if needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5), // Lighten the border color
              width: 2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Use ClipRRect to clip the image to rounded borders
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  p.i1!,
                  fit: BoxFit.fill, // Make the image fill the container
                  width: double.infinity, // Make the image take full width
                ),
              ),
              SizedBox(height: 16),
              // First Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        // Replace with profile picture
                        backgroundImage: AssetImage(p.i2!), // Remove quotes
                      ),
                      SizedBox(width: 12),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Posted by  ",
                              style: TextStyle(
                                fontSize: 14, // Decrease the font size
                                color: Colors.grey, // Grey color for "Posted by"
                              ),
                            ),
                            TextSpan(
                              text: "${p.Posted_by}",
                              style: TextStyle(
                                 color: Colors.black,
                                fontSize: 16, // Font size for the name
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ],
              ),
              SizedBox(height: 12), // Add space between rows
              // Second Row
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${p.title}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8), // Add space between title and description
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: p.descr,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  SvgIconButton(iconPath: "images/heart.svg", onPressed: (){}),
                  SizedBox(width: 8),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.mode_comment,),
                  ),
                  SizedBox(width: 12),
                  SvgIconButton(iconPath: "images/Mail.svg", onPressed: (){}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class PostDetailPage extends StatelessWidget {
  final Postcards post;

  PostDetailPage({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey), // Back button icon
          onPressed: () {
            Navigator.of(context).pop(); // Pop the current page
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Post Details', style: TextStyle(color: Colors.grey),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(post.i2!),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Posted by:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      post.Posted_by,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Display the post image
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                image: DecorationImage(
                  image: AssetImage(post.i1!),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
            // Display the "Posted by" section

            SizedBox(height: 16),
            // Display the post title and description
            Text(
              'Title:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              post.title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              post.descr,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 18),
            // Add your comment section here
            // You can use a ListView.builder or any other widget to display comments
            // Example:
            Text(
              'Comments:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            // Example comment
            ListTile(
              leading: CircleAvatar(
                // Commenter's profile picture
                radius: 20,
                backgroundImage: AssetImage('images/gourav.png'),
              ),
              title: Text('Gourav Sen'), // Commenter's name
              subtitle: Text('Im Gourav Sen , but this message is written by Dhairy Shrivastava '), // Comment content
            ),
            // Add more comments as needed
          ],
        ),
      ),
    );
  }
}









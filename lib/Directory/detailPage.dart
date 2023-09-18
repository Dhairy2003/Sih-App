import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> word;

  DetailPage({required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          word['name'],
          style: TextStyle(color: Colors.grey),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey), // Back button icon
          onPressed: () {
            Navigator.of(context).pop(); // Pop the current page
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  word['desc'] ?? 'Nothing found', // Use the null-aware operator (??) to display 'Nothing found' if word['desc'] is null
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 50,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

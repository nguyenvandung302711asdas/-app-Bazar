import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String price;
  final String? imageUrl;
  final String? imagePath;

  BookCard({
    required this.title,
    required this.price,
    this.imageUrl,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: imagePath != null
                  ? Image.asset(imagePath!, fit: BoxFit.cover)
                  : Image.network(imageUrl ?? '', fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 14, color: Colors.deepPurple),
          ),
        ],
      ),
    );
  }
}

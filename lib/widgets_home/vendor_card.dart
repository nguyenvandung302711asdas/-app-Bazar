import 'package:flutter/material.dart';

class VendorCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const VendorCard({required this.name, required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}

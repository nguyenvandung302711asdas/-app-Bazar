// lib/widgets_vendors/vendor_card.dart
import 'package:flutter/material.dart';

class VendorCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int rating;

  const VendorCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, color: Colors.red);
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(name, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
                (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Icon(
                Icons.star,
                size: 18,
                color: index < rating ? Colors.amber : Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// lib/widgets_vendors/vendor_grid.dart
import 'package:flutter/material.dart';
import '../models/vendor_model.dart';
import 'vendor_card.dart';

class VendorGrid extends StatelessWidget {
  final List<Vendor> vendors;

  const VendorGrid({super.key, required this.vendors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        color: Colors.grey.shade100,
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 12,
          childAspectRatio: 0.9,
          children: vendors.map((v) => VendorCard(
            name: v.name,
            imageUrl: v.imageUrl,
            rating: v.rating,
          )).toList(),
        ),
      ),
    );
  }
}

// lib/screens/vendor_screen.dart
import 'package:flutter/material.dart';
import 'package:btvn/widgets_vendors/app_bar.dart';
import '../widgets_vendors/vendor_grid.dart';
import '../models/vendor_model.dart';

class VendorScreen extends StatelessWidget {
  const VendorScreen({super.key});

  static const List<Vendor> allVendors = [
    Vendor(name: 'Wattpad', imageUrl: 'assets/Img/bran.png', rating: 3),
    Vendor(name: 'Kuromi', imageUrl: 'assets/Img/logo.png', rating: 5),
    Vendor(name: 'Crane & Co', imageUrl: 'assets/Img/logom.png', rating: 4),
    Vendor(name: 'GooDay', imageUrl: 'assets/Img/logoh.png', rating: 4),
    Vendor(name: 'Warehouse', imageUrl: 'assets/Img/logobbb.png', rating: 3),
    Vendor(name: 'Peppa Pig', imageUrl: 'assets/Img/logobbb.png', rating: 4),
    Vendor(name: 'Jstor', imageUrl: 'assets/Img/logon.png', rating: 4),
    Vendor(name: 'Peloton', imageUrl: 'assets/Img/logos.png', rating: 5),
    Vendor(name: 'Haymarket', imageUrl: 'assets/Img/logoc.png', rating: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 12),
              child: Text(
                'Our Vendors',
                style: TextStyle(fontSize: 15, color: Color(0xFF54408C)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 12),
              child: Text(
                'Vendors',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF54408C),
                ),
              ),
            ),
            const TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Books'),
                Tab(text: 'Poems'),
                Tab(text: 'Special for you'),
                Tab(text: 'Stationary'),
              ],
            ),
            const SizedBox(height: 12),
            const Expanded(
              child: TabBarView(
                children: [
                  VendorGrid(vendors: VendorScreen.allVendors),
                  VendorGrid(vendors: VendorScreen.allVendors),
                  VendorGrid(vendors: VendorScreen.allVendors),
                  VendorGrid(vendors: VendorScreen.allVendors),
                  VendorGrid(vendors: VendorScreen.allVendors),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

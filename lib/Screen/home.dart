import 'package:flutter/material.dart';
import 'package:btvn/widgets_home/book_card.dart';
import 'package:btvn/widgets_home/vendor_card.dart';
import 'package:btvn/widgets_home/author_card.dart';
import 'package:btvn/widgets_home/promo_card.dart';
import 'package:btvn/widgets_home/my_app_bar.dart';
import 'package:btvn/router.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Special Offer
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 160,
                child: PageView(
                  children: [
                    PromoCard(imagePath: 'assets/Img/Image.png'),
                    PromoCard(imagePath: 'assets/Img/Image.png'),
                    PromoCard(imagePath: 'assets/Img/Image.png'),
                  ],
                ),
              ),
            ),

            // Top of Week Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top of Week',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See all'),
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  BookCard(
                    title: 'The Kite Runner',
                    price: '\$14.99',
                    imagePath: 'assets/Img/Image.png',
                  ),
                  BookCard(
                    title: 'The Subtle Art of ',
                    price: '\$20.99',
                    imagePath: 'assets/Img/Frame.png',
                  ),
                  BookCard(
                    title: 'Sun Tzu',
                    price: '\$14.99',
                    imagePath: 'assets/Img/Mask.png',
                  ),
                ],
              ),
            ),

            // Best Vendors Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Vendors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      FluroRouterConfig.router.navigateTo(
                        context, "/vendors",

                      );
                    },
                    child: Text('See all'),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: const [
                  VendorCard(name: 'WS Warehouse', imageUrl: 'assets/Img/logo.png'),
                  VendorCard(name: 'Kuromi', imageUrl: 'assets/Img/logom.png'),
                  VendorCard(name: 'GoodDay', imageUrl: 'assets/Img/logoh.png'),
                  VendorCard(name: 'Crane & Co', imageUrl: 'assets/Img/logob.png'),
                ],
              ),
            ),

            // Authors Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Authors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See all'),
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: const [
                  AuthorCard(
                    name: 'John Freeman',
                    role: 'Writer',
                    imagePath: 'assets/Img/imgm.png',
                  ),
                  AuthorCard(
                    name: 'Tess Gunty',
                    role: 'Novelist',
                    imagePath: 'assets/Img/imgh.png',
                  ),
                  AuthorCard(
                    name: 'Richard Per',
                    role: 'Writer',
                    imagePath: 'assets/Img/imgb.png',
                  ),
                  AuthorCard(
                    name: 'Richard Per',
                    role: 'Writer',
                    imagePath: 'assets/Img/imgb.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {},
      ),
    );
  }
}

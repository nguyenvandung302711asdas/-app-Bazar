import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../router.dart';

class Onboarding3Page extends StatefulWidget {
  const Onboarding3Page({super.key});

  @override
  State<Onboarding3Page> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Image.asset('assets/images/Onboarding3.png'),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40
                  ),
                  child: Text(
                    'Start Your Adventure',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40
                  ),
                  child: Text(
                    "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50,),
                Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE8E8E8),
                            shape: OvalBorder(),
                          ),
                        ),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE8E8E8),
                            shape: OvalBorder(),
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Color(0xFF54408C),
                            shape: OvalBorder(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            FluroRouterConfig.router.navigateTo(
                              context, "/signin",
                              transition: TransitionType.fadeIn,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF54408C),
                            minimumSize: Size(327, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: const Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.50,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            FluroRouterConfig.router.navigateTo(
                              context, "/signin",
                              transition: TransitionType.fadeIn,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF9F8FC),
                            minimumSize: Size(327, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            'Sign in',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF54408C),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.50,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: TextStyle(
                color: Color(0xff54408C),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

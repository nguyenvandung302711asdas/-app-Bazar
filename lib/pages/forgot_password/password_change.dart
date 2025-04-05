import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../router.dart';

class PasswordChange extends StatelessWidget {
  const PasswordChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(  // Use Center widget to center the column
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/congratulation.png'),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  'Password Changed!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Password changed successfully, you can login again with a new password",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              // Register button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    FluroRouterConfig.router.navigateTo(
                      context, "/signin",
                      transition: TransitionType.fadeIn,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF54408C),
                    disabledBackgroundColor: const Color(0xFF54408C).withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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

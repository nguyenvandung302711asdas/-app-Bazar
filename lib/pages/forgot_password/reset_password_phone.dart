import 'package:btvn/pages/forgot_password/verification_code_phone.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../router.dart';
import '../../widgets/app_bar.dart';

class ResetPasswordPhone extends StatelessWidget {
  const ResetPasswordPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Reset password",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Please enter your phone number, we will send a verification code to your phone number.",
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 5,),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_outlined, size: 25,),
                      hintText: "Your phone number",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[220],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12), // Canh lề
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    FluroRouterConfig.router.navigateTo(
                      context, "/verificationCodePhone",
                      transition: TransitionType.fadeIn,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF54408C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'Send',
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

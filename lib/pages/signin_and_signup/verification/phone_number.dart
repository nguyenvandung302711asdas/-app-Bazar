import 'package:btvn/pages/signin_and_signup/verification/verification_phone.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../router.dart';
import '../../../widgets/app_bar.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String enteredPin = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 30
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: Text(
                          "Please enter your phone number, so we can more easily deliver your order",
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                          SizedBox(height: 5,),
                          TextField(
                            controller: TextEditingController(text: enteredPin),
                            readOnly: true,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_outlined),
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
                      SizedBox(height: 80,),
                      ElevatedButton(
                        onPressed: () {
                          FluroRouterConfig.router.navigateTo(
                            context, "/verificationPhone",
                            transition: TransitionType.fadeIn,
                          );
                        } ,
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
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 50
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color: Color(0xff54408C),
                child: Column(
                  children: [
                    for(int i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              3,
                                  (index) => numButton(1 + (3 * i) + index)
                          ).toList(),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: null,
                              child: Text(
                                ".",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),
                              )
                          ),
                          numButton(0),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextButton(
                              onPressed: () {
                                setState(
                                      () {
                                    if (enteredPin.isNotEmpty) {
                                      enteredPin =
                                          enteredPin.substring(0, enteredPin.length - 1);
                                    }
                                  },
                                );
                              },
                              child: const Icon(
                                Icons.backspace,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget numButton(int number) {
    return Padding(
      padding: EdgeInsets.only(
          top: 20
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            if(enteredPin.length < 10) {
              enteredPin += number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),
        ),
      ),
    );
  }

}

import 'package:btvn/pages/forgot_password/new_password.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../router.dart';
import '../../widgets/app_bar.dart';

class VerificationCodePhone extends StatefulWidget {
  const VerificationCodePhone({super.key});

  @override
  State<VerificationCodePhone> createState() => _VerificationCodePhoneState();
}

class _VerificationCodePhoneState extends State<VerificationCodePhone> {
  String enteredPin = '';

  final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.transparent
          )
      )
  );

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
                          "Verification Code",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.withOpacity(0.7),
                              ),
                              children: [
                                TextSpan(
                                  text: "Please enter the code we just sent to phone number ",
                                ),
                                TextSpan(
                                  text: "(+20) 123477092 299",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      SizedBox(height: 50,),
                      Center(
                        child: Pinput(
                          length: 4,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: defaultPinTheme.copyWith(
                              decoration: defaultPinTheme.decoration!.copyWith(
                                  border: Border.all(
                                      color: Color(0xff54408C)
                                  )
                              )
                          ),
                          controller: TextEditingController(text: enteredPin),
                          readOnly: true,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "If you didn't receive a code?",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Resend",
                              style: TextStyle(
                                color: Color(0xff54408C),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(
                        onPressed: () {
                          FluroRouterConfig.router.navigateTo(
                            context, "/newPassword",
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
                  vertical: 60
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.white,
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
                                    color: Colors.black,
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
                                color: Colors.black,
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
            if(enteredPin.length < 4) {
              enteredPin += number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),
        ),
      ),
    );
  }
}

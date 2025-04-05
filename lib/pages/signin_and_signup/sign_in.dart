// import 'package:baitapvenha/pages/forgot_password/forgot_password.dart';
// import 'package:baitapvenha/pages/sign_in_and_sign_up/sign_up.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../router.dart';
import '../../widgets/app_bar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back 👋",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                          Text(
                            "Sign in your account",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 30,),
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
                                  hintText: "Your email",
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                obscureText: _isObscured,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Your password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.grey[220],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscured ? Icons.visibility_off : Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscured = !_isObscured;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Căn trái tất cả phần tử
                            children: [
                              TextButton(
                                onPressed: () {
                                  FluroRouterConfig.router.navigateTo(
                                    context, "/forgotPassword",
                                    transition: TransitionType.fadeIn,
                                  );
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(0, 0),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  foregroundColor: Colors.transparent,
                                ),
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Color(0xff54408C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  FluroRouterConfig.router.navigateTo(
                                    context, "/home",
                                    transition: TransitionType.fadeIn,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF54408C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  elevation: 0, // Không có bóng
                                  minimumSize: Size(double.infinity, 60),
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      FluroRouterConfig.router.navigateTo(
                                        context, "/signup",
                                        transition: TransitionType.fadeIn,
                                      );
                                    },
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Color(0xff54408C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey.withOpacity(0.5),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or with",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey.withOpacity(0.5),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30
              ),
              child: Column(
                children: [
                  // Nút đăng nhập Google
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo_gg.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo_apple.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Sign in with Apple",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}


import 'package:btvn/pages/signin_and_signup/verification/verification_email.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:btvn/pages/signin_and_signup/sign_in.dart';

import '../../router.dart';
import '../../widgets/app_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignUpPage> {
  bool _isObscured = true;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordValid = false;
  bool _hasNumber = false;
  bool _hasLetter = false;
  bool _hasMinLength = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validatePassword(String value) {
    setState(() {
      _hasMinLength = value.length >= 8;
      _hasNumber = RegExp(r'[0-9]').hasMatch(value);
      _hasLetter = RegExp(r'[a-zA-Z]').hasMatch(value);
      _isPasswordValid = _hasMinLength && _hasNumber && _hasLetter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Create account and choose favorite menu",
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              // Name field
              const Text(
                "Name",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _nameController,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Your name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[220],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                ),
              ),
              const SizedBox(height: 20),
              // Email field
              const Text(
                "Email",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Your email",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[220],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                ),
              ),
              const SizedBox(height: 20),
              // Password field
              const Text(
                "Password",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _passwordController,
                obscureText: _isObscured,
                onChanged: _validatePassword,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Your password",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[220],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
              const SizedBox(height: 10),
              // Password validation messages
              Row(
                children: [
                  Icon(
                    _hasMinLength ? Icons.check : Icons.close,
                    color: _hasMinLength ? Colors.green : Colors.red,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Minimum 8 characters",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    _hasNumber ? Icons.check : Icons.close,
                    color: _hasNumber ? Colors.green : Colors.red,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "At least 1 number (1-9)",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    _hasLetter ? Icons.check : Icons.close,
                    color: _hasLetter ? Colors.green : Colors.red,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "At least lowercase or uppercase letters",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Register button
              ElevatedButton(
                onPressed: () {
                  FluroRouterConfig.router.navigateTo(
                    context, "/verificationEmail",
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
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Sign In link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account?",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      FluroRouterConfig.router.navigateTo(
                        context, "/signin",
                        transition: TransitionType.fadeIn,
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff54408C),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              // Terms agreement text
              Center(
                child: Column(
                  children: [
                    Text(
                      "By clicking Register, you agree to our",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        "Terms, Data Policy.",
                        style: TextStyle(
                          color: Color(0xff54408C),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

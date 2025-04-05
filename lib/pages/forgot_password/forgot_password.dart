import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../router.dart';
import '../../widgets/app_bar.dart';
import 'reset_password_email.dart';
import 'reset_password_phone.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String selectedOption = "email"; // Mặc định chọn email

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
                "Forgot Password",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Select which contact details should we use to reset your password",
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOptionCard(
                    icon: Icons.email_rounded,
                    title: "Email",
                    subtitle: "Send to your email",
                    isSelected: selectedOption == "email",
                    onTap: () {
                      setState(() {
                        selectedOption = "email";
                      });
                    },
                  ),
                  const SizedBox(width: 16),
                  _buildOptionCard(
                    icon: Icons.phone_outlined,
                    title: "Phone Number",
                    subtitle: "Send to your phone",
                    isSelected: selectedOption == "phone",
                    onTap: () {
                      setState(() {
                        selectedOption = "phone";
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedOption == "email") {
                      FluroRouterConfig.router.navigateTo(
                        context, "/resetPasswordEmail",
                        transition: TransitionType.fadeIn,
                      );
                    } else {
                      FluroRouterConfig.router.navigateTo(
                        context, "/resetPasswordPhone",
                        transition: TransitionType.fadeIn,
                      );
                    }
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
                    'Continue',
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

  Widget _buildOptionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.grey.shade50,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: isSelected ? const Color(0xFF6550C5) : Colors.transparent,
              width: 2.0,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Căn nội dung về trái
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: isSelected ? const Color(0xFF6550C5) : Colors.grey.shade400,
                size: 32,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),
                textAlign: TextAlign.start, // Đảm bảo text cũng căn trái
              ),
            ],
          ),
        ),
      ),
    );
  }
}

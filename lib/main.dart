import 'package:flutter/material.dart';
import 'package:btvn/pages/onboarding/splash.dart';
import 'package:btvn/router.dart';
import 'package:btvn/pages/onboarding/onboarding1.dart';
void main() {
  FluroRouterConfig.setupRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: FluroRouterConfig.router.generator,
      home: const SplashPage(),
    );
  }
}
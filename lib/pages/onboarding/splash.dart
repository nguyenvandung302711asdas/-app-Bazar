import 'package:flutter/material.dart';
import 'onboarding1.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
  @override
  void initState (){
    super.initState();
     redirect();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff54408C),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/logo.png'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/icon_splash.png'),
          ),
        ],
      ),
    );
  }
  Future<void> redirect() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const Onboarding1Page()
      )
    );
  }
}
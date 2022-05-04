import 'dart:async';
import 'package:eurus_mobile/screens/main_page.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';
import '../constants.dart' as constants;

class SplashScreen extends StatefulWidget {
  const SplashScreen({ key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_)=> const MainScreen()
          )
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //splash logo
            Image.asset('images/yakka-coin-white.png',
            height: 120,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              constants.APPLICATION_NAME,
              style: splashTitleText,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white70
                ),
            ), 
          ],
        ),
      ),
    );
  }
}


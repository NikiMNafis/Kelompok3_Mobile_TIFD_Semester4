import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_smtr4/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/image_splash.png',
                ),
            ),
          ),
        ),
      ),
    );
  }
}

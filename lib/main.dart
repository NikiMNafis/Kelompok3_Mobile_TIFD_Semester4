import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_smtr4/screen/sign_in_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in': (context) => SignInScreen(),
      },
    );
  }
}
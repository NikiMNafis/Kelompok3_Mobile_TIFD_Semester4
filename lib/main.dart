import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_smtr4/providers/auth_provider.dart';
import 'package:project_akhir_mobile_smtr4/screen/checkout_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/checkout_success_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/detail_chat_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/edit_profile_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/chart_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/home/chat_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/home/main_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/product_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/sign_in_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/sign_up_screen.dart';
import 'package:project_akhir_mobile_smtr4/screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/sign-in': (context) => SignInScreen(),
          '/sign-up': (context) => SignUpScreen(),
          '/home': (context) => MainScreen(),
          // '/detail-chat': (context) => DetailChatScreen(),
          '/edit-profile': (context) => EditProfileScreen(),
          '/product': (context) => ProductScreen(),
          '/cart': (context) => CartScreen(),
          '/checkout': (context) => CheckoutScreen(),
          '/checkout-success': (context) => CheckoutSuccessScreen(),
        },
      ),
    );
  }
}

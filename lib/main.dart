import 'package:flutter/material.dart';
import 'package:korzinkafull/mvvm/view/pages/basket_page.dart';
import 'package:korzinkafull/mvvm/view/pages/catalog_page.dart';
import 'package:korzinkafull/mvvm/view/pages/phome_page/home_screen.dart';
import 'package:korzinkafull/mvvm/view/pages/pin_code_screen/pin_code_screen.dart';
import 'package:korzinkafull/mvvm/view/pages/splash_screen.dart';
import 'package:korzinkafull/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        SplashScreen.route:(context)=>const SplashScreen(),
        PinCodeScreen.route:(context)=> const PinCodeScreen(),
        HomeScreen.route:(context)=>const HomeScreen(),
        BasketPage.route:(context)=>const BasketPage(),
        CatalogPage.route:(context)=>const CatalogPage()
      },
    );
  }
}


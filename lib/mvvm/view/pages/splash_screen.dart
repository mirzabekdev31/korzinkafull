import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:korzinkafull/mvvm/view/pages/pin_code_screen/pin_code_screen.dart';
import 'package:korzinkafull/mvvm/view_model/bloc/splash_bloc/splash_bloc.dart';

class SplashScreen extends StatefulWidget {
  static const route = "splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    openNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 189, 225),
          body: Center(
            child: Image(
              image: AssetImage(
                "assets/images/splashimg.png"
              ),
            ),
          ),
        );
  }


  Future<void> openNextScreen() async{
    await Future.delayed(const Duration(seconds: 4));
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, PinCodeScreen.route);
  }
}

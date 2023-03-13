import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korzinkafull/mvvm/view/pages/pin_code_screen/widgets/pin_code_item.dart';

class PinCodeScreen extends StatefulWidget {
  static const route="pincode";
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  String txtPinCode="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Pin Kodni \nkiriting",style: TextStyle(color: Colors.white,fontSize: 24),),
                    Container(
                          width: double.infinity,
                          child: PinCode(txtPinCode: txtPinCode,)),
                  ],
                ),
              ),
              NumberButtons()
            ],
          ),
        ),
      ),
    );
  }
}

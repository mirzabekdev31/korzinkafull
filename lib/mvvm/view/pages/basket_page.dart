import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasketPage extends StatefulWidget {
  static const route="baskrt";
  const BasketPage({Key? key}) : super(key: key);

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

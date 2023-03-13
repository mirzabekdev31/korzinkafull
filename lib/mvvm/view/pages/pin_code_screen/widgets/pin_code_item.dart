import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PinCode extends StatelessWidget {
  String txtPinCode="";
  PinCode({Key? key,required this.txtPinCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
              color: Colors.red[300]
          ),
          child: Center(
            child: dotsContainer(txtPinCode.isNotEmpty),
          ),
        ),
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[300]
          ),
          child: Center(
            child: dotsContainer(txtPinCode.length>=2),
          ),
        ),
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[300]
          ),
          child: Center(
            child: dotsContainer(txtPinCode.length>=3),
          ),
        ),
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[300]
          ),
          child: Center(
            child: dotsContainer(txtPinCode.length>=4),
          ),
        ),
      ],
    );
  }
  Widget dotsContainer(bool state){
    if(state){
      return Container(
        height: 5,
        width: 5,
        color: Colors.black,
      );
    }else{
      return Container();
    }
  }
}

class NumberButtons extends StatefulWidget {
  const NumberButtons({Key? key}) : super(key: key);

  @override
  State<NumberButtons> createState() => _NumberButtonsState();
}

class _NumberButtonsState extends State<NumberButtons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        height: 400,
        child: Column(
          children: [
            Expanded(child: Container(

              child: Row(
                children: [
                  Expanded(child: containerButton('1',)),
                  Expanded(child: containerButton('2',)),
                  Expanded(child: containerButton('3',)),
                ],
              ),
            )),
            Expanded(child: Container(

              child: Row(
                children: [
                  Expanded(child: containerButton('4',)),
                  Expanded(child: containerButton('5',)),
                  Expanded(child: containerButton('6',)),
                ],
              ),
            )),
            Expanded(child: Container(

              child: Row(
                children: [
                  Expanded(child: containerButton('7',)),
                  Expanded(child: containerButton('8',)),
                  Expanded(child: containerButton('9',)),
                ],
              ),
            )),
            Expanded(child: Container(
              child: Row(
                children: [
                  Expanded(child: Container(),),
                  Expanded(child: containerButton('0',)),
                  Expanded(child: containerButton('x',)),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget containerButton(String number){
  String txtPinCode="";
  return InkWell(
    onTap: (){
      if(txtPinCode.length<4){
        txtPinCode+=number;
        print(txtPinCode);
      }
    },
    child: Container(
      margin: const EdgeInsets.all(8),
      height: 70,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.red[200]
      ),
      child: Center(
        child: Text(number,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
    ),
  );
}




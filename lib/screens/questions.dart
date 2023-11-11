import 'package:flutter/material.dart';

class question extends StatefulWidget{
  question({super.key});
  @override
  State<question> createState(){
  return _questionstate();
  }
}
class _questionstate extends State<question>{
  @override
  Widget build (context) {
    return Text("this is the question screen");
}
}
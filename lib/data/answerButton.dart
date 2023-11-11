import 'package:flutter/material.dart';
class answerbutton extends StatelessWidget {
  const answerbutton({ required this.onTap, required this.Answertext,super.key});
   final String Answertext;
    final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)
        ),
        onPressed: onTap, child: Text(Answertext));
  }
}
